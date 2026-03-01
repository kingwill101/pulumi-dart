// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_customer_gateway_customer_gateway_args_doc}
/// The set of arguments for CustomerGateway.
/// {@endtemplate}
/// {@macro pulumi_vpn_customer_gateway_customer_gateway_args_doc}
class CustomerGatewayArgs {
  /// Asn.
  final pulumi.Input<String>? asn;
  /// The name of the customer gateway.
  final pulumi.Input<String>? customerGatewayName;
  /// The description of the customer gateway.
  final pulumi.Input<String>? description;
  /// The IP address of the customer gateway.
  final pulumi.Input<String> ipAddress;
  /// . Field 'name' has been deprecated from provider version 1.216.0. New field 'customer_gateway_name' instead.
  final pulumi.Input<String>? name;
  /// tag.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomerGatewayArgs].
  /// [asn] Asn.
  /// [customerGatewayName] The name of the customer gateway.
  /// [description] The description of the customer gateway.
  /// [ipAddress] The IP address of the customer gateway.
  /// [name] . Field 'name' has been deprecated from provider version 1.216.0. New field 'customer_gateway_name' instead.
  /// [tags] tag.
  CustomerGatewayArgs({
    String? asn,
    String? customerGatewayName,
    String? description,
    required String ipAddress,
    String? name,
    Map<String, String>? tags,
  }) :
      asn = pulumi.Input.asOptionalInput<String>(asn),
      customerGatewayName = pulumi.Input.asOptionalInput<String>(customerGatewayName),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipAddress = pulumi.Input.asInput<String>(ipAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'customerGatewayName': ?customerGatewayName,
      'description': ?description,
      'ipAddress': ipAddress,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory CustomerGatewayArgs.fromMap(Map<String, dynamic> map) {
    return CustomerGatewayArgs(
      asn: map['asn'] == null ? null : map['asn'] as String,
      customerGatewayName: map['customerGatewayName'] == null ? null : map['customerGatewayName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      ipAddress: map['ipAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

