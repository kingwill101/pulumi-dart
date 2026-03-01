// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceIpv6Prefix
class InstanceIpv6Prefix {
  /// <p>One or more IPv6 prefixes assigned to the network interface.</p>
  final String? ipv6Prefix;

  /// Creates a new [InstanceIpv6Prefix].
  /// [ipv6Prefix] <p>One or more IPv6 prefixes assigned to the network interface.</p>
  InstanceIpv6Prefix({
    this.ipv6Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6Prefix': ?ipv6Prefix,
    };
  }

  factory InstanceIpv6Prefix.fromMap(Map<String, dynamic> map) {
    return InstanceIpv6Prefix(
      ipv6Prefix: map['ipv6Prefix'] == null ? null : map['ipv6Prefix'] as String,
    );
  }
}

