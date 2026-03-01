// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_type.dart';

/// Configuration for a VPC subnet.
class SubnetSpec {
  /// An optional list of CIDR blocks to assign to the subnet spec for each AZ. If specified, the count must match the number of AZs being used for the VPC, and must also be specified for all other subnet specs.
  final List<String>? cidrBlocks;

  /// The netmask for the subnet's CIDR block. This is optional, the default value is inferred from the `cidrMask`, `cidrBlocks` or based on an even distribution of available space from the VPC's CIDR block after being divided evenly by availability zone.
  final int? cidrMask;

  /// The subnet's name. Will be templated upon creation.
  final String? name;

  /// Optional size of the subnet's CIDR block - the number of hosts. This value must be a power of 2 (e.g. 256, 512, 1024, etc.). This is optional, the default value is inferred from the `cidrMask`, `cidrBlocks` or based on an even distribution of available space from the VPC's CIDR block after being divided evenly by availability zone.
  final int? size;

  /// A map of tags to assign to the resource.
  final Map<String, String>? tags;

  /// The type of subnet.
  final SubnetType type;

  /// Creates a new [SubnetSpec].
  /// [cidrBlocks] An optional list of CIDR blocks to assign to the subnet spec for each AZ. If specified, the count must match the number of AZs being used for the VPC, and must also be specified for all other subnet specs.
  /// [cidrMask] The netmask for the subnet's CIDR block. This is optional, the default value is inferred from the `cidrMask`, `cidrBlocks` or based on an even distribution of available space from the VPC's CIDR block after being divided evenly by availability zone.
  /// [name] The subnet's name. Will be templated upon creation.
  /// [size] Optional size of the subnet's CIDR block - the number of hosts. This value must be a power of 2 (e.g. 256, 512, 1024, etc.). This is optional, the default value is inferred from the `cidrMask`, `cidrBlocks` or based on an even distribution of available space from the VPC's CIDR block after being divided evenly by availability zone.
  /// [tags] A map of tags to assign to the resource.
  /// [type] The type of subnet.
  SubnetSpec({
    this.cidrBlocks,
    this.cidrMask,
    this.name,
    this.size,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?cidrBlocks,
      'cidrMask': ?cidrMask,
      'name': ?name,
      'size': ?size,
      'tags': ?tags,
      'type': type.value,
    };
  }

  factory SubnetSpec.fromMap(Map<String, dynamic> map) {
    return SubnetSpec(
      cidrBlocks: map['cidrBlocks'] == null
          ? null
          : (map['cidrBlocks'] as List).cast<String>(),
      cidrMask: map['cidrMask'] == null ? null : map['cidrMask'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      size: map['size'] == null ? null : map['size'] as int,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      type: SubnetType.fromValue(map['type'] as String),
    );
  }
}
