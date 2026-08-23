// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_return_path_component_inbound_header_destination_port_range.dart';
import 'get_network_insights_analysis_return_path_component_inbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisReturnPathComponentInboundHeader {
  final pulumi.Input<List<String>> destinationAddresses;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>> destinationPortRanges;
  final pulumi.Input<String> protocol;
  final pulumi.Input<List<String>> sourceAddresses;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>> sourcePortRanges;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentInboundHeader].
  /// [destinationAddresses] Required.
  /// [destinationPortRanges] Required.
  /// [protocol] Required.
  /// [sourceAddresses] Required.
  /// [sourcePortRanges] Required.
  const GetNetworkInsightsAnalysisReturnPathComponentInboundHeader({
    required this.destinationAddresses,
    required this.destinationPortRanges,
    required this.protocol,
    required this.sourceAddresses,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': destinationAddresses,
      'destinationPortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
      'sourceAddresses': sourceAddresses,
      'sourcePortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentInboundHeader.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentInboundHeader(
      destinationAddresses: pulumi.Input.fromValue((map['destinationAddresses'] as List).cast<String>()),
      destinationPortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>(map['destinationPortRanges']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange.fromMap((value as Map).cast<String, dynamic>()))),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sourceAddresses: pulumi.Input.fromValue((map['sourceAddresses'] as List).cast<String>()),
      sourcePortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>(map['sourcePortRanges']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
