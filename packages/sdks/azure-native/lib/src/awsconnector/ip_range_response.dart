// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpRange
class IpRangeResponse {
  /// &lt;p&gt;The IPv4 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv4 address, use the /32 prefix length.&lt;/p&gt;
  final pulumi.Input<String>? cidrIp;
  /// &lt;p&gt;A description for the security group rule that references this IPv4 address range.&lt;/p&gt; &lt;p&gt;Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*&lt;/p&gt;
  final pulumi.Input<String>? description;

  /// Creates a new [IpRangeResponse].
  /// [cidrIp] &lt;p&gt;The IPv4 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv4 address, use the /32 prefix length.&lt;/p&gt;
  /// [description] &lt;p&gt;A description for the security group rule that references this IPv4 address range.&lt;/p&gt; &lt;p&gt;Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*&lt;/p&gt;
  const IpRangeResponse({
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
      cidrIp: (() { final guardedValue = map['cidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
