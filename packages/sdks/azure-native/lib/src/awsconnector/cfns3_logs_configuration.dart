// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CFNS3LogsConfiguration
class CFNS3LogsConfiguration {
  /// Property enable
  final pulumi.Input<bool?>? enable;

  /// Creates a new [CFNS3LogsConfiguration].
  /// [enable] Property enable
  const CFNS3LogsConfiguration({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory CFNS3LogsConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNS3LogsConfiguration(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
