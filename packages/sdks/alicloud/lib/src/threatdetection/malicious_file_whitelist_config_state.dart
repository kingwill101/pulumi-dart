// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MaliciousFileWhitelistConfig resources.
class MaliciousFileWhitelistConfigState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The name of the security alert associated with the representative rule.
  final pulumi.Input<String>? eventName;
  /// Represents the alarm associated with the resource and the white field.
  final pulumi.Input<String>? field;
  /// Represents the whiteout target value in effect for the resource.
  final pulumi.Input<String>? fieldValue;
  /// The decision operator in effect on behalf of the resource.
  final pulumi.Input<String>? operator;
  /// Business Source:
  /// - agentless: agentless detection.
  final pulumi.Input<String>? source;
  /// The type of target in effect on behalf of the resource.
  final pulumi.Input<String>? targetType;
  /// Represents the specific value of the target type in effect for the resource.
  final pulumi.Input<String>? targetValue;

  /// Creates a new [MaliciousFileWhitelistConfigState].
  /// [createTime] The creation time of the resource.
  /// [eventName] The name of the security alert associated with the representative rule.
  /// [field] Represents the alarm associated with the resource and the white field.
  /// [fieldValue] Represents the whiteout target value in effect for the resource.
  /// [operator] The decision operator in effect on behalf of the resource.
  /// [source] Business Source:
  /// [targetType] The type of target in effect on behalf of the resource.
  /// [targetValue] Represents the specific value of the target type in effect for the resource.
  MaliciousFileWhitelistConfigState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? eventName,
    pulumi.Output<String>? field,
    pulumi.Output<String>? fieldValue,
    pulumi.Output<String>? operator,
    pulumi.Output<String>? source,
    pulumi.Output<String>? targetType,
    pulumi.Output<String>? targetValue,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      eventName = pulumi.Input.asOptionalInput<String>(eventName),
      field = pulumi.Input.asOptionalInput<String>(field),
      fieldValue = pulumi.Input.asOptionalInput<String>(fieldValue),
      operator = pulumi.Input.asOptionalInput<String>(operator),
      source = pulumi.Input.asOptionalInput<String>(source),
      targetType = pulumi.Input.asOptionalInput<String>(targetType),
      targetValue = pulumi.Input.asOptionalInput<String>(targetValue);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'eventName': ?eventName,
      'field': ?field,
      'fieldValue': ?fieldValue,
      'operator': ?operator,
      'source': ?source,
      'targetType': ?targetType,
      'targetValue': ?targetValue,
    };
  }

  factory MaliciousFileWhitelistConfigState.fromMap(Map<String, dynamic> map) {
    return MaliciousFileWhitelistConfigState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      eventName: map['eventName'] == null ? null : pulumi.Output.create<String>(map['eventName'] as String),
      field: map['field'] == null ? null : pulumi.Output.create<String>(map['field'] as String),
      fieldValue: map['fieldValue'] == null ? null : pulumi.Output.create<String>(map['fieldValue'] as String),
      operator: map['operator'] == null ? null : pulumi.Output.create<String>(map['operator'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
      targetValue: map['targetValue'] == null ? null : pulumi.Output.create<String>(map['targetValue'] as String),
    );
  }
}

