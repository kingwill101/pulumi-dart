// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpRange
class IpRangeResponse {
  /// <p>The IPv4 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv4 address, use the /32 prefix length.</p>
  final pulumi.Input<String>? cidrIp;
  /// <p>A description for the security group rule that references this IPv4 address range.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*</p>
  final pulumi.Input<String>? description;

  /// Creates a new [IpRangeResponse].
  /// [cidrIp] <p>The IPv4 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv4 address, use the /32 prefix length.</p>
  /// [description] <p>A description for the security group rule that references this IPv4 address range.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*</p>
  IpRangeResponse({
    this.cidrIp,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': ?cidrIp,
      'description': ?description,
    };
  }

  factory IpRangeResponse.fromMap(Map<String, dynamic> map) {
    return IpRangeResponse(
      cidrIp: map['cidrIp'] == null ? null : (map['cidrIp'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
    );
  }
}

