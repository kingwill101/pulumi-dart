// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_path_filter.dart';
import 'get_network_insights_path_filter_at_destination.dart';
import 'get_network_insights_path_filter_at_source.dart';

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

  /// Creates a new [GetNetworkInsightsPathResult].
  /// [arn] ARN of the selected Network Insights Path.
  /// [destination] AWS resource that is the destination of the path.
  /// [destinationArn] ARN of the destination.
  /// [destinationIp] IP address of the AWS resource that is the destination of the path.
  /// [destinationPort] Destination port.
  /// [filterAtDestinations] Filters of the network paths at the destination.
  /// [filterAtSources] Filters of the network paths at the source.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networkInsightsPathId] Required.
  /// [protocol] Protocol.
  /// [region] Required.
  /// [source] AWS resource that is the source of the path.
  /// [sourceArn] ARN of the source.
  /// [sourceIp] IP address of the AWS resource that is the source of the path.
  /// [tags] Map of tags assigned to the resource.
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
    return <String, dynamic>{
      'arn': arn,
      'destination': destination,
      'destinationArn': destinationArn,
      'destinationIp': destinationIp,
      'destinationPort': destinationPort,
      'filterAtDestinations':
          pulumi.Input.encodeList<
            GetNetworkInsightsPathFilterAtDestination,
            Map<String, dynamic>
          >(filterAtDestinations, (value) => value.toMap()),
      'filterAtSources':
          pulumi.Input.encodeList<
            GetNetworkInsightsPathFilterAtSource,
            Map<String, dynamic>
          >(filterAtSources, (value) => value.toMap()),
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetNetworkInsightsPathFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'networkInsightsPathId': networkInsightsPathId,
      'protocol': protocol,
      'region': region,
      'source': source,
      'sourceArn': sourceArn,
      'sourceIp': sourceIp,
      'tags': tags,
    };
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
            map['filterAtDestinations']!,
            (value) => GetNetworkInsightsPathFilterAtDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      filterAtSources:
          pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtSource>(
            map['filterAtSources']!,
            (value) => GetNetworkInsightsPathFilterAtSource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetNetworkInsightsPathFilter>(
          guardedValue,
          (value) => GetNetworkInsightsPathFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
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
