// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayLogConfigSls {
  /// Enable Log Service
  final pulumi.Input<bool>? enable;

  /// Creates a new [GatewayLogConfigSls].
  /// [enable] Enable Log Service
  GatewayLogConfigSls({this.enable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enable': ?enable};
  }

  factory GatewayLogConfigSls.fromMap(Map<String, dynamic> map) {
    return GatewayLogConfigSls(
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
