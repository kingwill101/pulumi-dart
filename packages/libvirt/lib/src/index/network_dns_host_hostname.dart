// ignore_for_file: unused_element, unnecessary_cast


class NetworkDnsHostHostname {
  /// Sets the value of each hostname in the DNS configuration, allowing for individual identification.
  final String hostname;

  /// Creates a new [NetworkDnsHostHostname].
  /// [hostname] Sets the value of each hostname in the DNS configuration, allowing for individual identification.
  NetworkDnsHostHostname({
    required this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
    };
  }

  factory NetworkDnsHostHostname.fromMap(Map<String, dynamic> map) {
    return NetworkDnsHostHostname(
      hostname: map['hostname'] as String,
    );
  }
}

