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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      limitType: map['limitType'] == null ? null : (map['limitType']! as String).input(),
      maxBandwidthAbs: map['maxBandwidthAbs'] == null ? null : (map['maxBandwidthAbs']! as int).input(),
      maxBandwidthPercent: map['maxBandwidthPercent'] == null ? null : (map['maxBandwidthPercent']! as int).input(),
      minBandwidthAbs: map['minBandwidthAbs'] == null ? null : (map['minBandwidthAbs']! as int).input(),
      minBandwidthPercent: map['minBandwidthPercent'] == null ? null : (map['minBandwidthPercent']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      percentSourceType: map['percentSourceType'] == null ? null : (map['percentSourceType']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      qosId: map['qosId'] == null ? null : (map['qosId']! as String).input(),
    );
  }
}

