// ignore_for_file: unused_element, unnecessary_cast


class GetCustomerGatewaysGateway {
  /// The autonomous system number of the local data center gateway device of the VPN customer gateway.
  final int asn;
  /// The creation time of the VPN customer gateway.
  final String createTime;
  /// The description of the VPN customer gateway.
  final String description;
  /// ID of the VPN customer gateway .
  final String id;
  /// The ip address of the VPN customer gateway.
  final String ipAddress;
  /// The name of the VPN customer gateway.
  final String name;

  /// Creates a new [GetCustomerGatewaysGateway].
  /// [asn] The autonomous system number of the local data center gateway device of the VPN customer gateway.
  /// [createTime] The creation time of the VPN customer gateway.
  /// [description] The description of the VPN customer gateway.
  /// [id] ID of the VPN customer gateway .
  /// [ipAddress] The ip address of the VPN customer gateway.
  /// [name] The name of the VPN customer gateway.
  GetCustomerGatewaysGateway({
    required this.asn,
    required this.createTime,
    required this.description,
    required this.id,
    required this.ipAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'createTime': createTime,
      'description': description,
      'id': id,
      'ipAddress': ipAddress,
      'name': name,
    };
  }

  factory GetCustomerGatewaysGateway.fromMap(Map<String, dynamic> map) {
    return GetCustomerGatewaysGateway(
      asn: map['asn'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      name: map['name'] as String,
    );
  }
}

