// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_application_scale_application_scale_args_doc}
/// The set of arguments for ApplicationScale.
/// {@endtemplate}
/// {@macro pulumi_edas_application_scale_application_scale_args_doc}
class ApplicationScaleArgs {
  /// The ID of the application that you want to deploy.
  final pulumi.Input<String> appId;
  /// The ID of the instance group to which you want to add ECS instances to scale out the application.
  final pulumi.Input<String> deployGroup;
  /// The IDs of the Elastic Compute Unit (ECU) where you want to deploy the application. Type: List.
  final pulumi.Input<List<String>> ecuInfos;
  /// This parameter specifies whether to forcibly remove an ECS instance where the application is deployed. It is set as true only after the ECS instance expires. In normal cases, this parameter do not need to be specified.
  final pulumi.Input<bool>? forceStatus;

  /// Creates a new [ApplicationScaleArgs].
  /// [appId] The ID of the application that you want to deploy.
  /// [deployGroup] The ID of the instance group to which you want to add ECS instances to scale out the application.
  /// [ecuInfos] The IDs of the Elastic Compute Unit (ECU) where you want to deploy the application. Type: List.
  /// [forceStatus] This parameter specifies whether to forcibly remove an ECS instance where the application is deployed. It is set as true only after the ECS instance expires. In normal cases, this parameter do not need to be specified.
  ApplicationScaleArgs({
    required this.appId,
    required this.deployGroup,
    required this.ecuInfos,
    this.forceStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'deployGroup': deployGroup,
      'ecuInfos': ecuInfos,
      'forceStatus': ?forceStatus,
    };
  }

  factory ApplicationScaleArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationScaleArgs(
      appId: (map['appId'] as String).input(),
      deployGroup: (map['deployGroup'] as String).input(),
      ecuInfos: ((map['ecuInfos'] as List).cast<String>()).input(),
      forceStatus: map['forceStatus'] == null ? null : (map['forceStatus']! as bool).input(),
    );
  }
}

