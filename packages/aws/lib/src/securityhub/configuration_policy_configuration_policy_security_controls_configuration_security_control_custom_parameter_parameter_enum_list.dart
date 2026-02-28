// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList {
  final List<String> values;

  /// Creates a new [ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList].
  /// [values] Required.
  ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
