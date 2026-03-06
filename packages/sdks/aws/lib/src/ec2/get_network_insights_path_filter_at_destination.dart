// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_path_filter_at_destination_destination_port_range.dart';
import 'get_network_insights_path_filter_at_destination_source_port_range.dart';

class GetNetworkInsightsPathFilterAtDestination {
  final pulumi.Input<String> destinationAddress;
  final pulumi.Input<List<GetNetworkInsightsPathFilterAtDestinationDestinationPortRange>> destinationPortRanges;
  final pulumi.Input<String> sourceAddress;
  final pulumi.Input<List<GetNetworkInsightsPathFilterAtDestinationSourcePortRange>> sourcePortRanges;

  /// Creates a new [GetNetworkInsightsPathFilterAtDestination].
  /// [destinationAddress] Required.
  /// [destinationPortRanges] Required.
  /// [sourceAddress] Required.
  /// [sourcePortRanges] Required.
  const GetNetworkInsightsPathFilterAtDestination({
    required this.destinationAddress,
    required this.destinationPortRanges,
    required this.sourceAddress,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddress': destinationAddress,
      'destinationPortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsPathFilterAtDestinationDestinationPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtDestinationDestinationPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceAddress': sourceAddress,
      'sourcePortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsPathFilterAtDestinationSourcePortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtDestinationSourcePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsPathFilterAtDestination.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtDestination(
      destinationAddress: pulumi.Input.fromValue(map['destinationAddress'] as String),
      destinationPortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtDestinationDestinationPortRange>(map['destinationPortRanges']!, (value) => GetNetworkInsightsPathFilterAtDestinationDestinationPortRange.fromMap((value as Map).cast<String, dynamic>()))),
      sourceAddress: pulumi.Input.fromValue(map['sourceAddress'] as String),
      sourcePortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtDestinationSourcePortRange>(map['sourcePortRanges']!, (value) => GetNetworkInsightsPathFilterAtDestinationSourcePortRange.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

