// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_path_filter_at_source_destination_port_range.dart';
import 'get_network_insights_path_filter_at_source_source_port_range.dart';

class GetNetworkInsightsPathFilterAtSource {
  final String destinationAddress;
  final List<GetNetworkInsightsPathFilterAtSourceDestinationPortRange> destinationPortRanges;
  final String sourceAddress;
  final List<GetNetworkInsightsPathFilterAtSourceSourcePortRange> sourcePortRanges;

  /// Creates a new [GetNetworkInsightsPathFilterAtSource].
  /// [destinationAddress] Required.
  /// [destinationPortRanges] Required.
  /// [sourceAddress] Required.
  /// [sourcePortRanges] Required.
  GetNetworkInsightsPathFilterAtSource({
    required this.destinationAddress,
    required this.destinationPortRanges,
    required this.sourceAddress,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddress': destinationAddress,
      'destinationPortRanges': pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtSourceDestinationPortRange, Map<String, dynamic>>(destinationPortRanges, (value) => value.toMap()),
      'sourceAddress': sourceAddress,
      'sourcePortRanges': pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtSourceSourcePortRange, Map<String, dynamic>>(sourcePortRanges, (value) => value.toMap()),
    };
  }

  factory GetNetworkInsightsPathFilterAtSource.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtSource(
      destinationAddress: map['destinationAddress'] as String,
      destinationPortRanges: pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtSourceDestinationPortRange>(map['destinationPortRanges'], (value) => GetNetworkInsightsPathFilterAtSourceDestinationPortRange.fromMap((value as Map).cast<String, dynamic>())),
      sourceAddress: map['sourceAddress'] as String,
      sourcePortRanges: pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtSourceSourcePortRange>(map['sourcePortRanges'], (value) => GetNetworkInsightsPathFilterAtSourceSourcePortRange.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

