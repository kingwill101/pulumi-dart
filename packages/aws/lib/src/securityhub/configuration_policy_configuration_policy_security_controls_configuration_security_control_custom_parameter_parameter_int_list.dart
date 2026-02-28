// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList {
  final List<int> values;

  /// Creates a new [ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList].
  /// [values] Required.
  ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList(
      values: (map['values'] as List).cast<int>(),
    );
  }
}
