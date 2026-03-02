// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DNS configuration for the container group.
class DnsConfigurationResponse {
  /// The DNS servers for the container group.
  final pulumi.Input<List<String>> nameServers;
  /// The DNS options for the container group.
  final pulumi.Input<String>? options;
  /// The DNS search domains for hostname lookup in the container group.
  final pulumi.Input<String>? searchDomains;

  /// Creates a new [DnsConfigurationResponse].
  /// [nameServers] The DNS servers for the container group.
  /// [options] The DNS options for the container group.
  /// [searchDomains] The DNS search domains for hostname lookup in the container group.
  DnsConfigurationResponse({
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

  factory DnsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DnsConfigurationResponse(
      nameServers: ((map['nameServers'] as List).cast<String>()).input(),
      options: map['options'] == null ? null : (map['options']! as String).input(),
      searchDomains: map['searchDomains'] == null ? null : (map['searchDomains']! as String).input(),
    );
  }
}

