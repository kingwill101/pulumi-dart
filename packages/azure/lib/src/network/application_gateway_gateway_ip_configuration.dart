// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayGatewayIpConfiguration {
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The Name of this Gateway IP Configuration.
  final String name;
  /// The ID of the Subnet which the Application Gateway should be connected to.
  final String subnetId;

  /// Creates a new [ApplicationGatewayGatewayIpConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of this Gateway IP Configuration.
  /// [subnetId] The ID of the Subnet which the Application Gateway should be connected to.
  ApplicationGatewayGatewayIpConfiguration({
    this.id,
    required this.name,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'subnetId': subnetId,
    };
  }

  factory ApplicationGatewayGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayGatewayIpConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

