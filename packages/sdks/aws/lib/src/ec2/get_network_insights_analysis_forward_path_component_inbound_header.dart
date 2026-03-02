// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_forward_path_component_inbound_header_destination_port_range.dart';
import 'get_network_insights_analysis_forward_path_component_inbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisForwardPathComponentInboundHeader {
  final pulumi.Input<List<String>> destinationAddresses;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange>> destinationPortRanges;
  final pulumi.Input<String> protocol;
  final pulumi.Input<List<String>> sourceAddresses;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange>> sourcePortRanges;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentInboundHeader].
  /// [destinationAddresses] Required.
  /// [destinationPortRanges] Required.
  /// [protocol] Required.
  /// [sourceAddresses] Required.
  /// [sourcePortRanges] Required.
  GetNetworkInsightsAnalysisForwardPathComponentInboundHeader({
    required this.destinationAddresses,
    required this.destinationPortRanges,
    required this.protocol,
    required this.sourceAddresses,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': destinationAddresses,
      'destinationPortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
      'sourceAddresses': sourceAddresses,
      'sourcePortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentInboundHeader.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentInboundHeader(
      destinationAddresses: ((map['destinationAddresses'] as List).cast<String>()).input(),
      destinationPortRanges: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange>(map['destinationPortRanges']!, (value) => GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protocol: (map['protocol'] as String).input(),
      sourceAddresses: ((map['sourceAddresses'] as List).cast<String>()).input(),
      sourcePortRanges: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange>(map['sourcePortRanges']!, (value) => GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

