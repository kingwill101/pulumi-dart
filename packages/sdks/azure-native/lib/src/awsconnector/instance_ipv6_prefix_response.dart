// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceIpv6Prefix
class InstanceIpv6PrefixResponse {
  /// <p>One or more IPv6 prefixes assigned to the network interface.</p>
  final String? ipv6Prefix;

  /// Creates a new [InstanceIpv6PrefixResponse].
  /// [ipv6Prefix] <p>One or more IPv6 prefixes assigned to the network interface.</p>
  InstanceIpv6PrefixResponse({
    this.ipv6Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6Prefix': ?ipv6Prefix,
    };
  }

  factory InstanceIpv6PrefixResponse.fromMap(Map<String, dynamic> map) {
    return InstanceIpv6PrefixResponse(
      ipv6Prefix: map['ipv6Prefix'] == null ? null : map['ipv6Prefix'] as String,
    );
  }
}

