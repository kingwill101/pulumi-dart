// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConfigurationOptionSetting
class ConfigurationOptionSettingResponse {
  /// A unique namespace that identifies the option's associated AWS resource.
  final pulumi.Input<String?>? namespace;
  /// The name of the configuration option.
  final pulumi.Input<String?>? optionName;
  /// A unique resource name for the option setting. Use it for a time–based scaling configuration option.
  final pulumi.Input<String?>? resourceName;
  /// The current value for the configuration option.
  final pulumi.Input<String?>? value;

  /// Creates a new [ConfigurationOptionSettingResponse].
  /// [namespace] A unique namespace that identifies the option's associated AWS resource.
  /// [optionName] The name of the configuration option.
  /// [resourceName] A unique resource name for the option setting. Use it for a time–based scaling configuration option.
  /// [value] The current value for the configuration option.
  const ConfigurationOptionSettingResponse({
    this.namespace,
    this.optionName,
    this.resourceName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'optionName': ?optionName,
      'resourceName': ?resourceName,
      'value': ?value,
    };
  }

  factory ConfigurationOptionSettingResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationOptionSettingResponse(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionName: (() { final guardedValue = map['optionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
