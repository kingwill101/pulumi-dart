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
    pulumi.Output<String>? asn,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? customerGatewayName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      asn = pulumi.Input.asOptionalInput<String>(asn),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      customerGatewayName = pulumi.Input.asOptionalInput<String>(customerGatewayName),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      asn: map['asn'] == null ? null : pulumi.Output.create<String>(map['asn'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      customerGatewayName: map['customerGatewayName'] == null ? null : pulumi.Output.create<String>(map['customerGatewayName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

