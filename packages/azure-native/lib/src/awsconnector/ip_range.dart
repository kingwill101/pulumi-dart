// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IpRange
class IpRange {
  /// <p>The IPv4 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv4 address, use the /32 prefix length.</p>
  final String? cidrIp;
  /// <p>A description for the security group rule that references this IPv4 address range.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*</p>
  final String? description;

  /// Creates a new [IpRange].
  /// [cidrIp] <p>The IPv4 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv4 address, use the /32 prefix length.</p>
  /// [description] <p>A description for the security group rule that references this IPv4 address range.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*</p>
  IpRange({
    this.cidrIp,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': ?cidrIp,
      'description': ?description,
    };
  }

  factory IpRange.fromMap(Map<String, dynamic> map) {
    return IpRange(
      cidrIp: map['cidrIp'] == null ? null : map['cidrIp'] as String,
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

