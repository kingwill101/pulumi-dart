// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_path_filter_at_source_destination_port_range.dart';
import 'get_network_insights_path_filter_at_source_source_port_range.dart';

class GetNetworkInsightsPathFilterAtSource {
  final pulumi.Input<String> destinationAddress;
  final pulumi.Input<List<GetNetworkInsightsPathFilterAtSourceDestinationPortRange>> destinationPortRanges;
  final pulumi.Input<String> sourceAddress;
  final pulumi.Input<List<GetNetworkInsightsPathFilterAtSourceSourcePortRange>> sourcePortRanges;

  /// Creates a new [GetNetworkInsightsPathFilterAtSource].
  /// [destinationAddress] Required.
  /// [destinationPortRanges] Required.
  /// [sourceAddress] Required.
  /// [sourcePortRanges] Required.
  const GetNetworkInsightsPathFilterAtSource({
    required this.destinationAddress,
    required this.destinationPortRanges,
    required this.sourceAddress,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddress': destinationAddress,
      'destinationPortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsPathFilterAtSourceDestinationPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtSourceDestinationPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceAddress': sourceAddress,
      'sourcePortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsPathFilterAtSourceSourcePortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsPathFilterAtSourceSourcePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsPathFilterAtSource.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtSource(
      destinationAddress: pulumi.Input.fromValue(map['destinationAddress'] as String),
      destinationPortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtSourceDestinationPortRange>(map['destinationPortRanges']!, (value) => GetNetworkInsightsPathFilterAtSourceDestinationPortRange.fromMap((value as Map).cast<String, dynamic>()))),
      sourceAddress: pulumi.Input.fromValue(map['sourceAddress'] as String),
      sourcePortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsPathFilterAtSourceSourcePortRange>(map['sourcePortRanges']!, (value) => GetNetworkInsightsPathFilterAtSourceSourcePortRange.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

