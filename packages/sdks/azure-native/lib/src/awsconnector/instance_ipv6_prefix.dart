// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceIpv6Prefix
class InstanceIpv6Prefix {
  /// &lt;p&gt;One or more IPv6 prefixes assigned to the network interface.&lt;/p&gt;
  final pulumi.Input<String>? ipv6Prefix;

  /// Creates a new [InstanceIpv6Prefix].
  /// [ipv6Prefix] &lt;p&gt;One or more IPv6 prefixes assigned to the network interface.&lt;/p&gt;
  InstanceIpv6Prefix({this.ipv6Prefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv6Prefix': ?ipv6Prefix};
  }

  factory InstanceIpv6Prefix.fromMap(Map<String, dynamic> map) {
    return InstanceIpv6Prefix(
      ipv6Prefix: (() {
        final guardedValue = map['ipv6Prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
