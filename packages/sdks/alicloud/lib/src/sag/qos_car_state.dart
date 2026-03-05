// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QosCar resources.
class QosCarState {
  /// The description of the QoS speed limiting rule.
  final pulumi.Input<String>? description;
  /// The speed limiting method. Valid values: `Absolute`, `Percent`.
  final pulumi.Input<String>? limitType;
  /// The maximum bandwidth allowed for the stream specified in the quintuple rule. This parameter is required when the value of the LimitType is Absolute.
  final pulumi.Input<int>? maxBandwidthAbs;
  /// The maximum bandwidth percentage allowed for the stream specified in the quintuple rule. It is based on the maximum upstream bandwidth you set for the associated Smart Access Gateway (SAG) instance.This parameter is required when the value of the LimitType parameter is Percent.
  final pulumi.Input<int>? maxBandwidthPercent;
  /// The minimum bandwidth allowed for the stream specified in the quintuple rule. This parameter is required when the value of the LimitType parameter is Absolute.
  final pulumi.Input<int>? minBandwidthAbs;
  /// The minimum bandwidth percentage allowed for the stream specified in the quintuple rule. It is based on the maximum upstream bandwidth you set for the associated SAG instance.This parameter is required when the value of the LimitType parameter is Percent.
  final pulumi.Input<int>? minBandwidthPercent;
  /// The name of the QoS speed limiting rule..
  final pulumi.Input<String>? name;
  /// The bandwidth type when the speed is limited based on percentage. Valid values: CcnBandwidth, InternetUpBandwidth.The default value is InternetUpBandwidth.
  final pulumi.Input<String>? percentSourceType;
  /// The priority of the specified stream.
  final pulumi.Input<int>? priority;
  /// The instance ID of the QoS.
  final pulumi.Input<String>? qosId;

  /// Creates a new [QosCarState].
  /// [description] The description of the QoS speed limiting rule.
  /// [limitType] The speed limiting method. Valid values: `Absolute`, `Percent`.
  /// [maxBandwidthAbs] The maximum bandwidth allowed for the stream specified in the quintuple rule. This parameter is required when the value of the LimitType is Absolute.
  /// [maxBandwidthPercent] The maximum bandwidth percentage allowed for the stream specified in the quintuple rule. It is based on the maximum upstream bandwidth you set for the associated Smart Access Gateway (SAG) instance.This parameter is required when the value of the LimitType parameter is Percent.
  /// [minBandwidthAbs] The minimum bandwidth allowed for the stream specified in the quintuple rule. This parameter is required when the value of the LimitType parameter is Absolute.
  /// [minBandwidthPercent] The minimum bandwidth percentage allowed for the stream specified in the quintuple rule. It is based on the maximum upstream bandwidth you set for the associated SAG instance.This parameter is required when the value of the LimitType parameter is Percent.
  /// [name] The name of the QoS speed limiting rule..
  /// [percentSourceType] The bandwidth type when the speed is limited based on percentage. Valid values: CcnBandwidth, InternetUpBandwidth.The default value is InternetUpBandwidth.
  /// [priority] The priority of the specified stream.
  /// [qosId] The instance ID of the QoS.
  QosCarState({
    this.description,
    this.limitType,
    this.maxBandwidthAbs,
    this.maxBandwidthPercent,
    this.minBandwidthAbs,
    this.minBandwidthPercent,
    this.name,
    this.percentSourceType,
    this.priority,
    this.qosId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'limitType': ?limitType,
      'maxBandwidthAbs': ?maxBandwidthAbs,
      'maxBandwidthPercent': ?maxBandwidthPercent,
      'minBandwidthAbs': ?minBandwidthAbs,
      'minBandwidthPercent': ?minBandwidthPercent,
      'name': ?name,
      'percentSourceType': ?percentSourceType,
      'priority': ?priority,
      'qosId': ?qosId,
    };
  }

  factory QosCarState.fromMap(Map<String, dynamic> map) {
    return QosCarState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limitType: (() { final guardedValue = map['limitType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBandwidthAbs: (() { final guardedValue = map['maxBandwidthAbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxBandwidthPercent: (() { final guardedValue = map['maxBandwidthPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minBandwidthAbs: (() { final guardedValue = map['minBandwidthAbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minBandwidthPercent: (() { final guardedValue = map['minBandwidthPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentSourceType: (() { final guardedValue = map['percentSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      qosId: (() { final guardedValue = map['qosId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

