// ignore_for_file: unused_element, unnecessary_cast


class GatewayNetworkAccessConfig {
  /// Network Access Type
  final String? type;

  /// Creates a new [GatewayNetworkAccessConfig].
  /// [type] Network Access Type
  GatewayNetworkAccessConfig({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory GatewayNetworkAccessConfig.fromMap(Map<String, dynamic> map) {
    return GatewayNetworkAccessConfig(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

