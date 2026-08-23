// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Ipv6Range
class Ipv6RangeResponse {
  /// &lt;p&gt;The IPv6 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv6 address, use the /128 prefix length.&lt;/p&gt;
  final pulumi.Input<String>? cidrIpv6;
  /// &lt;p&gt;A description for the security group rule that references this IPv6 address range.&lt;/p&gt; &lt;p&gt;Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*&lt;/p&gt;
  final pulumi.Input<String>? description;

  /// Creates a new [Ipv6RangeResponse].
  /// [cidrIpv6] &lt;p&gt;The IPv6 address range. You can either specify a CIDR block or a source security group, not both. To specify a single IPv6 address, use the /128 prefix length.&lt;/p&gt;
  /// [description] &lt;p&gt;A description for the security group rule that references this IPv6 address range.&lt;/p&gt; &lt;p&gt;Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}!$*&lt;/p&gt;
  const Ipv6RangeResponse({
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
      cidrIpv6: (() { final guardedValue = map['cidrIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
