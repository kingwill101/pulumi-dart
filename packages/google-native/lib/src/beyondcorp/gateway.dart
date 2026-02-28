// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_type.dart';

/// Gateway represents a user facing component that serves as an entrance to enable connectivity.
class Gateway {
  /// The type of hosting used by the gateway.
  final GatewayType type;

  /// Creates a new [Gateway].
  /// [type] The type of hosting used by the gateway.
  Gateway({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type.value,
    };
  }

  factory Gateway.fromMap(Map<String, dynamic> map) {
    return Gateway(
      type: GatewayType.fromValue(map['type'] as String),
    );
  }
}

