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
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceValue: (() {
        final guardedValue = map['resourceValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      staticValue: (() {
        final guardedValue = map['staticValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      staticValues: (() {
        final guardedValue = map['staticValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
