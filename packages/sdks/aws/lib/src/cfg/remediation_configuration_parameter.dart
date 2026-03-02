// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RemediationConfigurationParameter {
  /// Name of the attribute.
  final pulumi.Input<String> name;
  /// Value is dynamic and changes at run-time.
  final pulumi.Input<String>? resourceValue;
  /// Value is static and does not change at run-time.
  final pulumi.Input<String>? staticValue;
  /// List of static values.
  final pulumi.Input<List<String>>? staticValues;

  /// Creates a new [RemediationConfigurationParameter].
  /// [name] Name of the attribute.
  /// [resourceValue] Value is dynamic and changes at run-time.
  /// [staticValue] Value is static and does not change at run-time.
  /// [staticValues] List of static values.
  RemediationConfigurationParameter({
    required this.name,
    this.resourceValue,
    this.staticValue,
    this.staticValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceValue': ?resourceValue,
      'staticValue': ?staticValue,
      'staticValues': ?staticValues,
    };
  }

  factory RemediationConfigurationParameter.fromMap(Map<String, dynamic> map) {
    return RemediationConfigurationParameter(
      name: (map['name'] as String).input(),
      resourceValue: map['resourceValue'] == null ? null : ((map['resourceValue'] as String).input()).input(),
      staticValue: map['staticValue'] == null ? null : ((map['staticValue'] as String).input()).input(),
      staticValues: map['staticValues'] == null ? null : (((map['staticValues'] as List).cast<String>()).input()).input(),
    );
  }
}

