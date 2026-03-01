// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_malicious_file_whitelist_config_malicious_file_whitelist_config_args_doc}
/// The set of arguments for MaliciousFileWhitelistConfig.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_malicious_file_whitelist_config_malicious_file_whitelist_config_args_doc}
class MaliciousFileWhitelistConfigArgs {
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

  /// Creates a new [MaliciousFileWhitelistConfigArgs].
  /// [eventName] The name of the security alert associated with the representative rule.
  /// [field] Represents the alarm associated with the resource and the white field.
  /// [fieldValue] Represents the whiteout target value in effect for the resource.
  /// [operator] The decision operator in effect on behalf of the resource.
  /// [source] Business Source:
  /// [targetType] The type of target in effect on behalf of the resource.
  /// [targetValue] Represents the specific value of the target type in effect for the resource.
  MaliciousFileWhitelistConfigArgs({
    String? eventName,
    String? field,
    String? fieldValue,
    String? operator,
    String? source,
    String? targetType,
    String? targetValue,
  }) :
      eventName = pulumi.Input.asOptionalInput<String>(eventName),
      field = pulumi.Input.asOptionalInput<String>(field),
      fieldValue = pulumi.Input.asOptionalInput<String>(fieldValue),
      operator = pulumi.Input.asOptionalInput<String>(operator),
      source = pulumi.Input.asOptionalInput<String>(source),
      targetType = pulumi.Input.asOptionalInput<String>(targetType),
      targetValue = pulumi.Input.asOptionalInput<String>(targetValue);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventName': ?eventName,
      'field': ?field,
      'fieldValue': ?fieldValue,
      'operator': ?operator,
      'source': ?source,
      'targetType': ?targetType,
      'targetValue': ?targetValue,
    };
  }

  factory MaliciousFileWhitelistConfigArgs.fromMap(Map<String, dynamic> map) {
    return MaliciousFileWhitelistConfigArgs(
      eventName: map['eventName'] == null ? null : map['eventName'] as String,
      field: map['field'] == null ? null : map['field'] as String,
      fieldValue: map['fieldValue'] == null ? null : map['fieldValue'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
      targetValue: map['targetValue'] == null ? null : map['targetValue'] as String,
    );
  }
}

