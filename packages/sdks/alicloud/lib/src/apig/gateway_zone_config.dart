// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayZoneConfig {
  /// Availability Zone Options
  final pulumi.Input<String> selectOption;

  /// Creates a new [GatewayZoneConfig].
  /// [selectOption] Availability Zone Options
  GatewayZoneConfig({
    required this.selectOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectOption': selectOption,
    };
  }

  factory GatewayZoneConfig.fromMap(Map<String, dynamic> map) {
    return GatewayZoneConfig(
      selectOption: pulumi.Input.fromValue(map['selectOption'] as String),
    );
  }
}

