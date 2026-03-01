// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CFNS3LogsConfiguration
class CFNS3LogsConfiguration {
  /// Property enable
  final bool? enable;

  /// Creates a new [CFNS3LogsConfiguration].
  /// [enable] Property enable
  CFNS3LogsConfiguration({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory CFNS3LogsConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNS3LogsConfiguration(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}

