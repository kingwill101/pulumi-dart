// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_type.dart';

/// Gateway represents a user facing component that serves as an entrance to enable connectivity.
class Gateway {
  /// The type of hosting used by the gateway.
  final GatewayType type;

  Gateway({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type.value;
    return map;
  }

  factory Gateway.fromMap(Map<String, dynamic> map) {
    return Gateway(
      type: GatewayType.fromValue(map['type'] as String),
    );
  }
}
