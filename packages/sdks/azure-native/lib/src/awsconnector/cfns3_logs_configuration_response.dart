// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CFNS3LogsConfiguration
class CFNS3LogsConfigurationResponse {
  /// Property enable
  final pulumi.Input<bool>? enable;

  /// Creates a new [CFNS3LogsConfigurationResponse].
  /// [enable] Property enable
  const CFNS3LogsConfigurationResponse({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory CFNS3LogsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNS3LogsConfigurationResponse(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
