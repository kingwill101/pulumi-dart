// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Ipv6Range
class Ipv6RangeResponse {
  /// <p>The IPv6 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv6 address, use the /128 prefix length.</p>
  final pulumi.Input<String>? cidrIpv6;
  /// <p>A description for the security group rule that references this IPv6 address range.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*</p>
  final pulumi.Input<String>? description;

  /// Creates a new [Ipv6RangeResponse].
  /// [cidrIpv6] <p>The IPv6 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv6 address, use the /128 prefix length.</p>
  /// [description] <p>A description for the security group rule that references this IPv6 address range.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*</p>
  Ipv6RangeResponse({
    this.cidrIpv6,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIpv6': ?cidrIpv6,
      'description': ?description,
    };
  }

  factory Ipv6RangeResponse.fromMap(Map<String, dynamic> map) {
    return Ipv6RangeResponse(
      cidrIpv6: map['cidrIpv6'] == null ? null : (map['cidrIpv6'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
    );
  }
}

