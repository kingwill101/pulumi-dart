// ignore_for_file: unused_element, unnecessary_cast


/// Dependency cache settings for the deployment
class DeploymentSettingsCacheOptions {
  /// Enable dependency caching
  final bool? enable;

  /// Creates a new [DeploymentSettingsCacheOptions].
  /// [enable] Enable dependency caching
  DeploymentSettingsCacheOptions({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory DeploymentSettingsCacheOptions.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsCacheOptions(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}

