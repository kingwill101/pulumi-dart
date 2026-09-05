// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_path_filter.dart';
import 'get_network_insights_path_filter_at_destination.dart';
import 'get_network_insights_path_filter_at_source.dart';

/// Result data returned by getNetworkInsightsPath.
class GetNetworkInsightsPathResult {
  /// ARN of the selected Network Insights Path.
  final String? arn;
  /// AWS resource that is the destination of the path.
  final String? destination;
  /// ARN of the destination.
  final String? destinationArn;
  /// IP address of the AWS resource that is the destination of the path.
  final String? destinationIp;
  /// Destination port.
  final int? destinationPort;
  /// Filters of the network paths at the destination.
  final List<GetNetworkInsightsPathFilterAtDestination>? filterAtDestinations;
  /// Filters of the network paths at the source.
  final List<GetNetworkInsightsPathFilterAtSource>? filterAtSources;
  final List<GetNetworkInsightsPathFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? networkInsightsPathId;
  /// Protocol.
  final String? protocol;
  final String? region;
  /// AWS resource that is the source of the path.
  final String? source;
  /// ARN of the source.
  final String? sourceArn;
  /// IP address of the AWS resource that is the source of the path.
  final String? sourceIp;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

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
  /// [networkInsightsPathId] Optional.
  /// [protocol] Protocol.
  /// [region] Optional.
  /// [source] AWS resource that is the source of the path.
  /// [sourceArn] ARN of the source.
  /// [sourceIp] IP address of the AWS resource that is the source of the path.
  /// [tags] Map of tags assigned to the resource.
  const GetNetworkInsightsPathResult({
    this.arn,
    this.destination,
    this.destinationArn,
    this.destinationIp,
    this.destinationPort,
    this.filterAtDestinations,
    this.filterAtSources,
    this.filters,
    this.id,
    this.networkInsightsPathId,
    this.protocol,
    this.region,
    this.source,
    this.sourceArn,
    this.sourceIp,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'destination': ?destination,
      'destinationArn': ?destinationArn,
      'destinationIp': ?destinationIp,
      'destinationPort': ?destinationPort,
      'filterAtDestinations': ?(() { final guardedValue = filterAtDestinations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtDestination, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filterAtSources': ?(() { final guardedValue = filterAtSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInsightsPathFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'networkInsightsPathId': ?networkInsightsPathId,
      'protocol': ?protocol,
      'region': ?region,
      'source': ?source,
      'sourceArn': ?sourceArn,
      'sourceIp': ?sourceIp,
      'tags': ?tags,
    };
  }

  factory GetNetworkInsightsPathResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationArn: (() { final guardedValue = map['destinationArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationIp: (() { final guardedValue = map['destinationIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      filterAtDestinations: (() { final guardedValue = map['filterAtDestinations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtDestination>(guardedValue, (value) => GetNetworkInsightsPathFilterAtDestination.fromMap((value as Map).cast<String, dynamic>())); })(),
      filterAtSources: (() { final guardedValue = map['filterAtSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtSource>(guardedValue, (value) => GetNetworkInsightsPathFilterAtSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInsightsPathFilter>(guardedValue, (value) => GetNetworkInsightsPathFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInsightsPathId: (() { final guardedValue = map['networkInsightsPathId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceArn: (() { final guardedValue = map['sourceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceIp: (() { final guardedValue = map['sourceIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
