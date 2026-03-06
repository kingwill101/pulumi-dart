// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomerGatewaysGateway {
  /// The autonomous system number of the local data center gateway device of the VPN customer gateway.
  final pulumi.Input<int> asn;
  /// The creation time of the VPN customer gateway.
  final pulumi.Input<String> createTime;
  /// The description of the VPN customer gateway.
  final pulumi.Input<String> description;
  /// ID of the VPN customer gateway .
  final pulumi.Input<String> id;
  /// The ip address of the VPN customer gateway.
  final pulumi.Input<String> ipAddress;
  /// The name of the VPN customer gateway.
  final pulumi.Input<String> name;

  /// Creates a new [GetCustomerGatewaysGateway].
  /// [asn] The autonomous system number of the local data center gateway device of the VPN customer gateway.
  /// [createTime] The creation time of the VPN customer gateway.
  /// [description] The description of the VPN customer gateway.
  /// [id] ID of the VPN customer gateway .
  /// [ipAddress] The ip address of the VPN customer gateway.
  /// [name] The name of the VPN customer gateway.
  const GetCustomerGatewaysGateway({
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
      asn: pulumi.Input.fromValue(map['asn'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

