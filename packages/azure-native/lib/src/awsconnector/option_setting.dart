// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OptionSetting
class OptionSetting {
  /// A unique namespace that identifies the option's associated AWS resource.
  final String? namespace;
  /// The name of the configuration option.
  final String? optionName;
  /// A unique resource name for the option setting. Use it for a time–based scaling configuration option.
  final String? resourceName;
  /// The current value for the configuration option.
  final String? value;

  /// Creates a new [OptionSetting].
  /// [namespace] A unique namespace that identifies the option's associated AWS resource.
  /// [optionName] The name of the configuration option.
  /// [resourceName] A unique resource name for the option setting. Use it for a time–based scaling configuration option.
  /// [value] The current value for the configuration option.
  OptionSetting({
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

  factory OptionSetting.fromMap(Map<String, dynamic> map) {
    return OptionSetting(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      optionName: map['optionName'] == null ? null : map['optionName'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

