// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceIpv4Prefix
class InstanceIpv4Prefix {
  /// <p>One or more IPv4 prefixes assigned to the network interface.</p>
  final pulumi.Input<String>? ipv4Prefix;

  /// Creates a new [InstanceIpv4Prefix].
  /// [ipv4Prefix] <p>One or more IPv4 prefixes assigned to the network interface.</p>
  InstanceIpv4Prefix({
    this.ipv4Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Prefix': ?ipv4Prefix,
    };
  }

  factory InstanceIpv4Prefix.fromMap(Map<String, dynamic> map) {
    return InstanceIpv4Prefix(
      ipv4Prefix: map['ipv4Prefix'] == null ? null : (map['ipv4Prefix']! as String).input(),
    );
  }
}

