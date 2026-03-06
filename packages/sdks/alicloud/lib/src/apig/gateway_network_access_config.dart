// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayNetworkAccessConfig {
  /// Network Access Type
  final pulumi.Input<String>? type;

  /// Creates a new [GatewayNetworkAccessConfig].
  /// [type] Network Access Type
  const GatewayNetworkAccessConfig({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory GatewayNetworkAccessConfig.fromMap(Map<String, dynamic> map) {
    return GatewayNetworkAccessConfig(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

