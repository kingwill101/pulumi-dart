// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_path_filter_at_destination_destination_port_range.dart';
import 'get_network_insights_path_filter_at_destination_source_port_range.dart';

class GetNetworkInsightsPathFilterAtDestination {
  final String destinationAddress;
  final List<GetNetworkInsightsPathFilterAtDestinationDestinationPortRange> destinationPortRanges;
  final String sourceAddress;
  final List<GetNetworkInsightsPathFilterAtDestinationSourcePortRange> sourcePortRanges;

  /// Creates a new [GetNetworkInsightsPathFilterAtDestination].
  /// [destinationAddress] Required.
  /// [destinationPortRanges] Required.
  /// [sourceAddress] Required.
  /// [sourcePortRanges] Required.
  GetNetworkInsightsPathFilterAtDestination({
    required this.destinationAddress,
    required this.destinationPortRanges,
    required this.sourceAddress,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddress': destinationAddress,
      'destinationPortRanges': pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtDestinationDestinationPortRange, Map<String, dynamic>>(destinationPortRanges, (value) => value.toMap()),
      'sourceAddress': sourceAddress,
      'sourcePortRanges': pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtDestinationSourcePortRange, Map<String, dynamic>>(sourcePortRanges, (value) => value.toMap()),
    };
  }

  factory GetNetworkInsightsPathFilterAtDestination.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtDestination(
      destinationAddress: map['destinationAddress'] as String,
      destinationPortRanges: pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtDestinationDestinationPortRange>(map['destinationPortRanges'], (value) => GetNetworkInsightsPathFilterAtDestinationDestinationPortRange.fromMap((value as Map).cast<String, dynamic>())),
      sourceAddress: map['sourceAddress'] as String,
      sourcePortRanges: pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtDestinationSourcePortRange>(map['sourcePortRanges'], (value) => GetNetworkInsightsPathFilterAtDestinationSourcePortRange.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

