// ignore_for_file: unused_element, unnecessary_cast


/// DNS configuration for the container group.
class DnsConfiguration {
  /// The DNS servers for the container group.
  final List<String> nameServers;
  /// The DNS options for the container group.
  final String? options;
  /// The DNS search domains for hostname lookup in the container group.
  final String? searchDomains;

  /// Creates a new [DnsConfiguration].
  /// [nameServers] The DNS servers for the container group.
  /// [options] The DNS options for the container group.
  /// [searchDomains] The DNS search domains for hostname lookup in the container group.
  DnsConfiguration({
    required this.nameServers,
    this.options,
    this.searchDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameServers': nameServers,
      'options': ?options,
      'searchDomains': ?searchDomains,
    };
  }

  factory DnsConfiguration.fromMap(Map<String, dynamic> map) {
    return DnsConfiguration(
      nameServers: (map['nameServers'] as List).cast<String>(),
      options: map['options'] == null ? null : map['options'] as String,
      searchDomains: map['searchDomains'] == null ? null : map['searchDomains'] as String,
    );
  }
}

