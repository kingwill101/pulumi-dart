// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceIpv4Prefix
class InstanceIpv4PrefixResponse {
  /// &lt;p&gt;One or more IPv4 prefixes assigned to the network interface.&lt;/p&gt;
  final pulumi.Input<String?>? ipv4Prefix;

  /// Creates a new [InstanceIpv4PrefixResponse].
  /// [ipv4Prefix] &lt;p&gt;One or more IPv4 prefixes assigned to the network interface.&lt;/p&gt;
  const InstanceIpv4PrefixResponse({
    this.ipv4Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Prefix': ?ipv4Prefix,
    };
  }

  factory InstanceIpv4PrefixResponse.fromMap(Map<String, dynamic> map) {
    return InstanceIpv4PrefixResponse(
      ipv4Prefix: (() { final guardedValue = map['ipv4Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
