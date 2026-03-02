// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomerGateway resources.
class CustomerGatewayState {
  /// Asn.
  final pulumi.Input<String>? asn;
  /// The time when the customer gateway was created.
  final pulumi.Input<int>? createTime;
  /// The name of the customer gateway.
  final pulumi.Input<String>? customerGatewayName;
  /// The description of the customer gateway.
  final pulumi.Input<String>? description;
  /// The IP address of the customer gateway.
  final pulumi.Input<String>? ipAddress;
  /// . Field 'name' has been deprecated from provider version 1.216.0. New field 'customer_gateway_name' instead.
  final pulumi.Input<String>? name;
  /// tag.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomerGatewayState].
  /// [asn] Asn.
  /// [createTime] The time when the customer gateway was created.
  /// [customerGatewayName] The name of the customer gateway.
  /// [description] The description of the customer gateway.
  /// [ipAddress] The IP address of the customer gateway.
  /// [name] . Field 'name' has been deprecated from provider version 1.216.0. New field 'customer_gateway_name' instead.
  /// [tags] tag.
  CustomerGatewayState({
    this.asn,
    this.createTime,
    this.customerGatewayName,
    this.description,
    this.ipAddress,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'createTime': ?createTime,
      'customerGatewayName': ?customerGatewayName,
      'description': ?description,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory CustomerGatewayState.fromMap(Map<String, dynamic> map) {
    return CustomerGatewayState(
      asn: map['asn'] == null ? null : (map['asn'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      customerGatewayName: map['customerGatewayName'] == null ? null : (map['customerGatewayName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

