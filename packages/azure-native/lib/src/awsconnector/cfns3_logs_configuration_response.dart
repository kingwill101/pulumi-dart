// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CFNS3LogsConfiguration
class CFNS3LogsConfigurationResponse {
  /// Property enable
  final bool? enable;

  /// Creates a new [CFNS3LogsConfigurationResponse].
  /// [enable] Property enable
  CFNS3LogsConfigurationResponse({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory CFNS3LogsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNS3LogsConfigurationResponse(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}

