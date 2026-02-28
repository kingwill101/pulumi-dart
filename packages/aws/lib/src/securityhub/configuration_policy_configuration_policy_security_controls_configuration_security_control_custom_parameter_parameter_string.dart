// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString {
  final String value;

  /// Creates a new [ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString].
  /// [value] Required.
  ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString(
      value: map['value'] as String,
    );
  }
}
