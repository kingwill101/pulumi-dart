// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationScale resources.
class ApplicationScaleState {
  /// The ID of the application that you want to deploy.
  final pulumi.Input<String>? appId;
  /// The ID of the instance group to which you want to add ECS instances to scale out the application.
  final pulumi.Input<String>? deployGroup;
  /// The ecc information of the resource supplied above. The value is formulated as `&lt;ecc1,ecc2&gt;`.
  final pulumi.Input<String>? eccInfo;
  /// The IDs of the Elastic Compute Unit (ECU) where you want to deploy the application. Type: List.
  final pulumi.Input<List<String>>? ecuInfos;
  /// This parameter specifies whether to forcibly remove an ECS instance where the application is deployed. It is set as true only after the ECS instance expires. In normal cases, this parameter do not need to be specified.
  final pulumi.Input<bool>? forceStatus;

  /// Creates a new [ApplicationScaleState].
  /// [appId] The ID of the application that you want to deploy.
  /// [deployGroup] The ID of the instance group to which you want to add ECS instances to scale out the application.
  /// [eccInfo] The ecc information of the resource supplied above. The value is formulated as `&lt;ecc1,ecc2&gt;`.
  /// [ecuInfos] The IDs of the Elastic Compute Unit (ECU) where you want to deploy the application. Type: List.
  /// [forceStatus] This parameter specifies whether to forcibly remove an ECS instance where the application is deployed. It is set as true only after the ECS instance expires. In normal cases, this parameter do not need to be specified.
  ApplicationScaleState({
    this.appId,
    this.deployGroup,
    this.eccInfo,
    this.ecuInfos,
    this.forceStatus,
  });

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
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployGroup: (() { final guardedValue = map['deployGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eccInfo: (() { final guardedValue = map['eccInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecuInfos: (() { final guardedValue = map['ecuInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      forceStatus: (() { final guardedValue = map['forceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

