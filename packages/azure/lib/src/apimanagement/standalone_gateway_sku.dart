// ignore_for_file: unused_element, unnecessary_cast


class StandaloneGatewaySku {
  /// The number of deployed units of the SKU. Defaults to `1`.
  final int? capacity;
  /// The name of the SKU. The only possible value is `WorkspaceGatewayPremium`.
  final String name;

  /// Creates a new [StandaloneGatewaySku].
  /// [capacity] The number of deployed units of the SKU. Defaults to `1`.
  /// [name] The name of the SKU. The only possible value is `WorkspaceGatewayPremium`.
  StandaloneGatewaySku({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory StandaloneGatewaySku.fromMap(Map<String, dynamic> map) {
    return StandaloneGatewaySku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
    );
  }
}

