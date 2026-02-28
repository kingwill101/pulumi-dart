// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList {
  final List<String> values;

  /// Creates a new [ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList].
  /// [values] Required.
  ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
