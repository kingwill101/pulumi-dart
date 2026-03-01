// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayGatewayIpConfiguration {
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;
  /// The ID of the subnet the private link configuration is connected to.
  final String subnetId;

  /// Creates a new [GetApplicationGatewayGatewayIpConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [subnetId] The ID of the subnet the private link configuration is connected to.
  GetApplicationGatewayGatewayIpConfiguration({
    required this.id,
    required this.name,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subnetId': subnetId,
    };
  }

  factory GetApplicationGatewayGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayGatewayIpConfiguration(
      id: map['id'] as String,
      name: map['name'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

