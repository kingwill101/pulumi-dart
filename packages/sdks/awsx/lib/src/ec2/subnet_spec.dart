// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_type.dart';

/// Configuration for a VPC subnet.
class SubnetSpec {
  /// Indicates whether a network interface created in this subnet receives an IPv6 address.
  final pulumi.Input<bool?>? assignIpv6AddressOnCreation;
  /// An optional list of CIDR blocks to assign to the subnet spec for each AZ. If specified, the count must match the number of AZs being used for the VPC, and must also be specified for all other subnet specs.
  final pulumi.Input<List<String>?>? cidrBlocks;
  /// The netmask for the subnet's CIDR block. This is optional, the default value is inferred from the `cidrMask`, `cidrBlocks` or based on an even distribution of available space from the VPC's CIDR block after being divided evenly by availability zone.
  final pulumi.Input<int?>? cidrMask;
  /// The subnet's name. Will be templated upon creation.
  final pulumi.Input<String?>? name;
  /// Optional size of the subnet's CIDR block - the number of hosts. This value must be a power of 2 (e.g. 256, 512, 1024, etc.). This is optional, the default value is inferred from the `cidrMask`, `cidrBlocks` or based on an even distribution of available space from the VPC's CIDR block after being divided evenly by availability zone.
  final pulumi.Input<int?>? size;
  /// A map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The type of subnet.
  final pulumi.Input<SubnetType> type;

  /// Creates a new [SubnetSpec].
  /// [assignIpv6AddressOnCreation] Indicates whether a network interface created in this subnet receives an IPv6 address.
  /// [cidrBlocks] An optional list of CIDR blocks to assign to the subnet spec for each AZ. If specified, the count must match the number of AZs being used for the VPC, and must also be specified for all other subnet specs.
  /// [cidrMask] The netmask for the subnet's CIDR block. This is optional, the default value is inferred from the `cidrMask`, `cidrBlocks` or based on an even distribution of available space from the VPC's CIDR block after being divided evenly by availability zone.
  /// [name] The subnet's name. Will be templated upon creation.
  /// [size] Optional size of the subnet's CIDR block - the number of hosts. This value must be a power of 2 (e.g. 256, 512, 1024, etc.). This is optional, the default value is inferred from the `cidrMask`, `cidrBlocks` or based on an even distribution of available space from the VPC's CIDR block after being divided evenly by availability zone.
  /// [tags] A map of tags to assign to the resource.
  /// [type] The type of subnet.
  const SubnetSpec({
    this.assignIpv6AddressOnCreation,
    this.cidrBlocks,
    this.cidrMask,
    this.name,
    this.size,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignIpv6AddressOnCreation': ?assignIpv6AddressOnCreation,
      'cidrBlocks': ?cidrBlocks,
      'cidrMask': ?cidrMask,
      'name': ?name,
      'size': ?size,
      'tags': ?tags,
      'type': pulumi.Input.mapInputValue<SubnetType, String>(type, (value) => value.wireValue),
    };
  }

  factory SubnetSpec.fromMap(Map<String, dynamic> map) {
    return SubnetSpec(
      assignIpv6AddressOnCreation: (() { final guardedValue = map['assignIpv6AddressOnCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cidrBlocks: (() { final guardedValue = map['cidrBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cidrMask: (() { final guardedValue = map['cidrMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(SubnetType.fromValue(map['type']! as String)),
    );
  }
}
