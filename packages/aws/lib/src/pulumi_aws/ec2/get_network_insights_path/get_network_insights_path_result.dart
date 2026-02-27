// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_network_insights_path_filter/get_network_insights_path_filter.dart';
import '../get_network_insights_path_filter_at_destination/get_network_insights_path_filter_at_destination.dart';
import '../get_network_insights_path_filter_at_source/get_network_insights_path_filter_at_source.dart';

/// Result data returned by getNetworkInsightsPath.
class GetNetworkInsightsPathResult {
  /// ARN of the selected Network Insights Path.
  final String arn;

  /// AWS resource that is the destination of the path.
  final String destination;

  /// ARN of the destination.
  final String destinationArn;

  /// IP address of the AWS resource that is the destination of the path.
  final String destinationIp;

  /// Destination port.
  final int destinationPort;

  /// Filters of the network paths at the destination.
  final List<GetNetworkInsightsPathFilterAtDestination> filterAtDestinations;

  /// Filters of the network paths at the source.
  final List<GetNetworkInsightsPathFilterAtSource> filterAtSources;
  final List<GetNetworkInsightsPathFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String networkInsightsPathId;

  /// Protocol.
  final String protocol;
  final String region;

  /// AWS resource that is the source of the path.
  final String source;

  /// ARN of the source.
  final String sourceArn;

  /// IP address of the AWS resource that is the source of the path.
  final String sourceIp;

  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  GetNetworkInsightsPathResult({
    required this.arn,
    required this.destination,
    required this.destinationArn,
    required this.destinationIp,
    required this.destinationPort,
    required this.filterAtDestinations,
    required this.filterAtSources,
    this.filters,
    required this.id,
    required this.networkInsightsPathId,
    required this.protocol,
    required this.region,
    required this.source,
    required this.sourceArn,
    required this.sourceIp,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['destination'] = destination;
    map['destinationArn'] = destinationArn;
    map['destinationIp'] = destinationIp;
    map['destinationPort'] = destinationPort;
    map['filterAtDestinations'] = pulumi.Input.encodeList<
        GetNetworkInsightsPathFilterAtDestination,
        Map<String, dynamic>>(filterAtDestinations, (value) => value.toMap());
    map['filterAtSources'] = pulumi.Input.encodeList<
        GetNetworkInsightsPathFilterAtSource,
        Map<String, dynamic>>(filterAtSources, (value) => value.toMap());
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetNetworkInsightsPathFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['networkInsightsPathId'] = networkInsightsPathId;
    map['protocol'] = protocol;
    map['region'] = region;
    map['source'] = source;
    map['sourceArn'] = sourceArn;
    map['sourceIp'] = sourceIp;
    map['tags'] = tags;
    return map;
  }

  factory GetNetworkInsightsPathResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathResult(
      arn: map['arn'] as String,
      destination: map['destination'] as String,
      destinationArn: map['destinationArn'] as String,
      destinationIp: map['destinationIp'] as String,
      destinationPort: map['destinationPort'] as int,
      filterAtDestinations:
          pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtDestination>(
              map['filterAtDestinations'],
              (value) => GetNetworkInsightsPathFilterAtDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
      filterAtSources:
          pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtSource>(
              map['filterAtSources'],
              (value) => GetNetworkInsightsPathFilterAtSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetNetworkInsightsPathFilter>(
              map['filters'],
              (value) => GetNetworkInsightsPathFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      networkInsightsPathId: map['networkInsightsPathId'] as String,
      protocol: map['protocol'] as String,
      region: map['region'] as String,
      source: map['source'] as String,
      sourceArn: map['sourceArn'] as String,
      sourceIp: map['sourceIp'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
