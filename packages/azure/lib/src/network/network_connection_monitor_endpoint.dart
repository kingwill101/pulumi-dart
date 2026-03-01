// ignore_for_file: unused_element, unnecessary_cast

import 'network_connection_monitor_endpoint_filter.dart';

class NetworkConnectionMonitorEndpoint {
  /// The IP address or domain name of the Network Connection Monitor endpoint.
  final String? address;
  /// The test coverage for the Network Connection Monitor endpoint. Possible values are `AboveAverage`, `Average`, `BelowAverage`, `Default`, `Full` and `Low`.
  final String? coverageLevel;
  /// A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be excluded to the Network Connection Monitor endpoint.
  final List<String>? excludedIpAddresses;
  /// A `filter` block as defined below.
  final NetworkConnectionMonitorEndpointFilter? filter;
  /// A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be included to the Network Connection Monitor endpoint.
  final List<String>? includedIpAddresses;
  /// The name of the endpoint for the Network Connection Monitor .
  final String name;
  /// The resource ID which is used as the endpoint by the Network Connection Monitor.
  final String? targetResourceId;
  /// The endpoint type of the Network Connection Monitor. Possible values are `AzureArcVM`, `AzureSubnet`, `AzureVM`, `AzureVNet`, `ExternalAddress`, `MMAWorkspaceMachine` and `MMAWorkspaceNetwork`.
  final String? targetResourceType;

  /// Creates a new [NetworkConnectionMonitorEndpoint].
  /// [address] The IP address or domain name of the Network Connection Monitor endpoint.
  /// [coverageLevel] The test coverage for the Network Connection Monitor endpoint. Possible values are `AboveAverage`, `Average`, `BelowAverage`, `Default`, `Full` and `Low`.
  /// [excludedIpAddresses] A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be excluded to the Network Connection Monitor endpoint.
  /// [filter] A `filter` block as defined below.
  /// [includedIpAddresses] A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be included to the Network Connection Monitor endpoint.
  /// [name] The name of the endpoint for the Network Connection Monitor .
  /// [targetResourceId] The resource ID which is used as the endpoint by the Network Connection Monitor.
  /// [targetResourceType] The endpoint type of the Network Connection Monitor. Possible values are `AzureArcVM`, `AzureSubnet`, `AzureVM`, `AzureVNet`, `ExternalAddress`, `MMAWorkspaceMachine` and `MMAWorkspaceNetwork`.
  NetworkConnectionMonitorEndpoint({
    this.address,
    this.coverageLevel,
    this.excludedIpAddresses,
    this.filter,
    this.includedIpAddresses,
    required this.name,
    this.targetResourceId,
    this.targetResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'coverageLevel': ?coverageLevel,
      'excludedIpAddresses': ?excludedIpAddresses,
      'filter': ?filter == null ? null : filter!.toMap(),
      'includedIpAddresses': ?includedIpAddresses,
      'name': name,
      'targetResourceId': ?targetResourceId,
      'targetResourceType': ?targetResourceType,
    };
  }

  factory NetworkConnectionMonitorEndpoint.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      coverageLevel: map['coverageLevel'] == null ? null : map['coverageLevel'] as String,
      excludedIpAddresses: map['excludedIpAddresses'] == null ? null : (map['excludedIpAddresses'] as List).cast<String>(),
      filter: map['filter'] == null ? null : NetworkConnectionMonitorEndpointFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      includedIpAddresses: map['includedIpAddresses'] == null ? null : (map['includedIpAddresses'] as List).cast<String>(),
      name: map['name'] as String,
      targetResourceId: map['targetResourceId'] == null ? null : map['targetResourceId'] as String,
      targetResourceType: map['targetResourceType'] == null ? null : map['targetResourceType'] as String,
    );
  }
}

