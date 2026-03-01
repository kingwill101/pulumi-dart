// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationScale resources.
class ApplicationScaleState {
  /// The ID of the application that you want to deploy.
  final pulumi.Input<String>? appId;
  /// The ID of the instance group to which you want to add ECS instances to scale out the application.
  final pulumi.Input<String>? deployGroup;
  /// The ecc information of the resource supplied above. The value is formulated as `<ecc1,ecc2>`.
  final pulumi.Input<String>? eccInfo;
  /// The IDs of the Elastic Compute Unit (ECU) where you want to deploy the application. Type: List.
  final pulumi.Input<List<String>>? ecuInfos;
  /// This parameter specifies whether to forcibly remove an ECS instance where the application is deployed. It is set as true only after the ECS instance expires. In normal cases, this parameter do not need to be specified.
  final pulumi.Input<bool>? forceStatus;

  /// Creates a new [ApplicationScaleState].
  /// [appId] The ID of the application that you want to deploy.
  /// [deployGroup] The ID of the instance group to which you want to add ECS instances to scale out the application.
  /// [eccInfo] The ecc information of the resource supplied above. The value is formulated as `<ecc1,ecc2>`.
  /// [ecuInfos] The IDs of the Elastic Compute Unit (ECU) where you want to deploy the application. Type: List.
  /// [forceStatus] This parameter specifies whether to forcibly remove an ECS instance where the application is deployed. It is set as true only after the ECS instance expires. In normal cases, this parameter do not need to be specified.
  ApplicationScaleState({
    pulumi.Output<String>? appId,
    pulumi.Output<String>? deployGroup,
    pulumi.Output<String>? eccInfo,
    pulumi.Output<List<String>>? ecuInfos,
    pulumi.Output<bool>? forceStatus,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      deployGroup = pulumi.Input.asOptionalInput<String>(deployGroup),
      eccInfo = pulumi.Input.asOptionalInput<String>(eccInfo),
      ecuInfos = pulumi.Input.asOptionalInput<List<String>>(ecuInfos),
      forceStatus = pulumi.Input.asOptionalInput<bool>(forceStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'deployGroup': ?deployGroup,
      'eccInfo': ?eccInfo,
      'ecuInfos': ?ecuInfos,
      'forceStatus': ?forceStatus,
    };
  }

  factory ApplicationScaleState.fromMap(Map<String, dynamic> map) {
    return ApplicationScaleState(
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      deployGroup: map['deployGroup'] == null ? null : pulumi.Output.create<String>(map['deployGroup'] as String),
      eccInfo: map['eccInfo'] == null ? null : pulumi.Output.create<String>(map['eccInfo'] as String),
      ecuInfos: map['ecuInfos'] == null ? null : pulumi.Output.create<List<String>>((map['ecuInfos'] as List).cast<String>()),
      forceStatus: map['forceStatus'] == null ? null : pulumi.Output.create<bool>(map['forceStatus'] as bool),
    );
  }
}

