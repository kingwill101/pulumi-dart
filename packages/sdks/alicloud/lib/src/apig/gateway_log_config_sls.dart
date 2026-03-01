// ignore_for_file: unused_element, unnecessary_cast


class GatewayLogConfigSls {
  /// Enable Log Service
  final bool? enable;

  /// Creates a new [GatewayLogConfigSls].
  /// [enable] Enable Log Service
  GatewayLogConfigSls({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GatewayLogConfigSls.fromMap(Map<String, dynamic> map) {
    return GatewayLogConfigSls(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}

