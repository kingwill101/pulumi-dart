// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Public IP Properties resource.
class PublicIPAddressProperties {
  /// IP Address. This is static. If the user specifies, we allocate that otherwise allocate from logical network address space.
  final pulumi.Input<String>? ipAddress;
  /// ipAllocationScope: Azure Reference to a particular IP Pool (ALM) or a LogicalNetwork (ALL) for allocating public IP
  final pulumi.Input<String>? ipAllocationScope;
  /// Whether the public IP is v4 or v6. Defaults to IPv4
  final pulumi.Input<String>? publicIPAddressVersion;

  /// Creates a new [PublicIPAddressProperties].
  /// [ipAddress] IP Address. This is static. If the user specifies, we allocate that otherwise allocate from logical network address space.
  /// [ipAllocationScope] ipAllocationScope: Azure Reference to a particular IP Pool (ALM) or a LogicalNetwork (ALL) for allocating public IP
  /// [publicIPAddressVersion] Whether the public IP is v4 or v6. Defaults to IPv4
  PublicIPAddressProperties({
    this.ipAddress,
    this.ipAllocationScope,
    this.publicIPAddressVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'ipAllocationScope': ?ipAllocationScope,
      'publicIPAddressVersion': ?publicIPAddressVersion,
    };
  }

  factory PublicIPAddressProperties.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressProperties(
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      ipAllocationScope: map['ipAllocationScope'] == null ? null : (map['ipAllocationScope']! as String).input(),
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : (map['publicIPAddressVersion']! as String).input(),
    );
  }
}

