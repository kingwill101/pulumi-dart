// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector {
  /// Match if the field value ends with one of the specified values.
  final pulumi.Input<List<String>>? endsWiths;
  /// Match if the field value equals one of the specified values.
  final pulumi.Input<List<String>>? equals;
  /// Name of the field to use for selection.
  final pulumi.Input<String> field;
  /// Match if the field value does not end with one of the specified values.
  final pulumi.Input<List<String>>? notEndsWiths;
  /// Match if the field value does not equal any of the specified values.
  final pulumi.Input<List<String>>? notEquals;
  /// Match if the field value does not start with any of the specified values.
  final pulumi.Input<List<String>>? notStartsWiths;
  /// Match if the field value starts with one of the specified values.
  final pulumi.Input<List<String>>? startsWiths;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector].
  /// [endsWiths] Match if the field value ends with one of the specified values.
  /// [equals] Match if the field value equals one of the specified values.
  /// [field] Name of the field to use for selection.
  /// [notEndsWiths] Match if the field value does not end with one of the specified values.
  /// [notEquals] Match if the field value does not equal any of the specified values.
  /// [notStartsWiths] Match if the field value does not start with any of the specified values.
  /// [startsWiths] Match if the field value starts with one of the specified values.
  const TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector({
    this.endsWiths,
    this.equals,
    required this.field,
    this.notEndsWiths,
    this.notEquals,
    this.notStartsWiths,
    this.startsWiths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endsWiths': ?endsWiths,
      'equals': ?equals,
      'field': field,
      'notEndsWiths': ?notEndsWiths,
      'notEquals': ?notEquals,
      'notStartsWiths': ?notStartsWiths,
      'startsWiths': ?startsWiths,
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector(
      endsWiths: (() { final guardedValue = map['endsWiths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      equals: (() { final guardedValue = map['equals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      field: pulumi.Input.fromValue(map['field'] as String),
      notEndsWiths: (() { final guardedValue = map['notEndsWiths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notEquals: (() { final guardedValue = map['notEquals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notStartsWiths: (() { final guardedValue = map['notStartsWiths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      startsWiths: (() { final guardedValue = map['startsWiths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
