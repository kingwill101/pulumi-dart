// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OptionSetting
class OptionSettingResponse {
  /// A unique namespace that identifies the option's associated AWS resource.
  final pulumi.Input<String>? namespace;
  /// The name of the configuration option.
  final pulumi.Input<String>? optionName;
  /// A unique resource name for the option setting. Use it for a time–based scaling configuration option.
  final pulumi.Input<String>? resourceName;
  /// The current value for the configuration option.
  final pulumi.Input<String>? value;

  /// Creates a new [OptionSettingResponse].
  /// [namespace] A unique namespace that identifies the option's associated AWS resource.
  /// [optionName] The name of the configuration option.
  /// [resourceName] A unique resource name for the option setting. Use it for a time–based scaling configuration option.
  /// [value] The current value for the configuration option.
  OptionSettingResponse({
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

  factory OptionSettingResponse.fromMap(Map<String, dynamic> map) {
    return OptionSettingResponse(
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      optionName: map['optionName'] == null ? null : (map['optionName']! as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

