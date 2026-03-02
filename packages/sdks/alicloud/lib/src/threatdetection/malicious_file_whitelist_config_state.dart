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
    this.createTime,
    this.eventName,
    this.field,
    this.fieldValue,
    this.operator,
    this.source,
    this.targetType,
    this.targetValue,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      eventName: map['eventName'] == null ? null : (map['eventName']! as String).input(),
      field: map['field'] == null ? null : (map['field']! as String).input(),
      fieldValue: map['fieldValue'] == null ? null : (map['fieldValue']! as String).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
      targetType: map['targetType'] == null ? null : (map['targetType']! as String).input(),
      targetValue: map['targetValue'] == null ? null : (map['targetValue']! as String).input(),
    );
  }
}

