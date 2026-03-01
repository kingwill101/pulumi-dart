// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_forward_path_component_outbound_header_destination_port_range.dart';
import 'get_network_insights_analysis_forward_path_component_outbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader {
  final List<String> destinationAddresses;
  final List<
    GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange
  >
  destinationPortRanges;
  final String protocol;
  final List<String> sourceAddresses;
  final List<
    GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange
  >
  sourcePortRanges;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader].
  /// [destinationAddresses] Required.
  /// [destinationPortRanges] Required.
  /// [protocol] Required.
  /// [sourceAddresses] Required.
  /// [sourcePortRanges] Required.
  GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader({
    required this.destinationAddresses,
    required this.destinationPortRanges,
    required this.protocol,
    required this.sourceAddresses,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': destinationAddresses,
      'destinationPortRanges':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange,
            Map<String, dynamic>
          >(destinationPortRanges, (value) => value.toMap()),
      'protocol': protocol,
      'sourceAddresses': sourceAddresses,
      'sourcePortRanges':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange,
            Map<String, dynamic>
          >(sourcePortRanges, (value) => value.toMap()),
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader(
      destinationAddresses: (map['destinationAddresses'] as List)
          .cast<String>(),
      destinationPortRanges:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange
          >(
            map['destinationPortRanges'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      protocol: map['protocol'] as String,
      sourceAddresses: (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange
          >(
            map['sourcePortRanges'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
