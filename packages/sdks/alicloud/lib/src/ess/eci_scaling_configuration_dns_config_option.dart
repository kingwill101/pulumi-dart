// ignore_for_file: unused_element, unnecessary_cast


class EciScalingConfigurationDnsConfigOption {
  /// The option name.
  final String? name;
  /// The option value.
  final String? value;

  /// Creates a new [EciScalingConfigurationDnsConfigOption].
  /// [name] The option name.
  /// [value] The option value.
  EciScalingConfigurationDnsConfigOption({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory EciScalingConfigurationDnsConfigOption.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationDnsConfigOption(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

