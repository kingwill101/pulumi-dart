// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_forward_path_component_outbound_header_destination_port_range.dart';
import 'get_network_insights_analysis_forward_path_component_outbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader {
  final pulumi.Input<List<String>> destinationAddresses;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange>> destinationPortRanges;
  final pulumi.Input<String> protocol;
  final pulumi.Input<List<String>> sourceAddresses;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange>> sourcePortRanges;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader].
  /// [destinationAddresses] Required.
  /// [destinationPortRanges] Required.
  /// [protocol] Required.
  /// [sourceAddresses] Required.
  /// [sourcePortRanges] Required.
  const GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader({
    required this.destinationAddresses,
    required this.destinationPortRanges,
    required this.protocol,
    required this.sourceAddresses,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': destinationAddresses,
      'destinationPortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
      'sourceAddresses': sourceAddresses,
      'sourcePortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader(
      destinationAddresses: pulumi.Input.fromValue((map['destinationAddresses'] as List).cast<String>()),
      destinationPortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange>(map['destinationPortRanges']!, (value) => GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange.fromMap((value as Map).cast<String, dynamic>()))),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sourceAddresses: pulumi.Input.fromValue((map['sourceAddresses'] as List).cast<String>()),
      sourcePortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange>(map['sourcePortRanges']!, (value) => GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

