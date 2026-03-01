// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sag_qos_car_qos_car_args_doc}
/// The set of arguments for QosCar.
/// {@endtemplate}
/// {@macro pulumi_sag_qos_car_qos_car_args_doc}
class QosCarArgs {
  /// The description of the QoS speed limiting rule.
  final pulumi.Input<String>? description;
  /// The speed limiting method. Valid values: `Absolute`, `Percent`.
  final pulumi.Input<String> limitType;
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
  final pulumi.Input<int> priority;
  /// The instance ID of the QoS.
  final pulumi.Input<String> qosId;

  /// Creates a new [QosCarArgs].
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
  QosCarArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> limitType,
    pulumi.Output<int>? maxBandwidthAbs,
    pulumi.Output<int>? maxBandwidthPercent,
    pulumi.Output<int>? minBandwidthAbs,
    pulumi.Output<int>? minBandwidthPercent,
    pulumi.Output<String>? name,
    pulumi.Output<String>? percentSourceType,
    required pulumi.Output<int> priority,
    required pulumi.Output<String> qosId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      limitType = pulumi.Input.asInput<String>(limitType),
      maxBandwidthAbs = pulumi.Input.asOptionalInput<int>(maxBandwidthAbs),
      maxBandwidthPercent = pulumi.Input.asOptionalInput<int>(maxBandwidthPercent),
      minBandwidthAbs = pulumi.Input.asOptionalInput<int>(minBandwidthAbs),
      minBandwidthPercent = pulumi.Input.asOptionalInput<int>(minBandwidthPercent),
      name = pulumi.Input.asOptionalInput<String>(name),
      percentSourceType = pulumi.Input.asOptionalInput<String>(percentSourceType),
      priority = pulumi.Input.asInput<int>(priority),
      qosId = pulumi.Input.asInput<String>(qosId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'limitType': limitType,
      'maxBandwidthAbs': ?maxBandwidthAbs,
      'maxBandwidthPercent': ?maxBandwidthPercent,
      'minBandwidthAbs': ?minBandwidthAbs,
      'minBandwidthPercent': ?minBandwidthPercent,
      'name': ?name,
      'percentSourceType': ?percentSourceType,
      'priority': priority,
      'qosId': qosId,
    };
  }

  factory QosCarArgs.fromMap(Map<String, dynamic> map) {
    return QosCarArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      limitType: pulumi.Output.create<String>(map['limitType'] as String),
      maxBandwidthAbs: map['maxBandwidthAbs'] == null ? null : pulumi.Output.create<int>(map['maxBandwidthAbs'] as int),
      maxBandwidthPercent: map['maxBandwidthPercent'] == null ? null : pulumi.Output.create<int>(map['maxBandwidthPercent'] as int),
      minBandwidthAbs: map['minBandwidthAbs'] == null ? null : pulumi.Output.create<int>(map['minBandwidthAbs'] as int),
      minBandwidthPercent: map['minBandwidthPercent'] == null ? null : pulumi.Output.create<int>(map['minBandwidthPercent'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      percentSourceType: map['percentSourceType'] == null ? null : pulumi.Output.create<String>(map['percentSourceType'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      qosId: pulumi.Output.create<String>(map['qosId'] as String),
    );
  }
}

