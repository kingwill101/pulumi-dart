// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_return_path_component_outbound_header_destination_port_range.dart';
import 'get_network_insights_analysis_return_path_component_outbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader {
  final List<String> destinationAddresses;
  final List<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange> destinationPortRanges;
  final String protocol;
  final List<String> sourceAddresses;
  final List<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange> sourcePortRanges;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader].
  /// [destinationAddresses] Required.
  /// [destinationPortRanges] Required.
  /// [protocol] Required.
  /// [sourceAddresses] Required.
  /// [sourcePortRanges] Required.
  GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader({
    required this.destinationAddresses,
    required this.destinationPortRanges,
    required this.protocol,
    required this.sourceAddresses,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': destinationAddresses,
      'destinationPortRanges': pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange, Map<String, dynamic>>(destinationPortRanges, (value) => value.toMap()),
      'protocol': protocol,
      'sourceAddresses': sourceAddresses,
      'sourcePortRanges': pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange, Map<String, dynamic>>(sourcePortRanges, (value) => value.toMap()),
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader(
      destinationAddresses: (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>(map['destinationPortRanges'], (value) => GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange.fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      sourceAddresses: (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges: pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>(map['sourcePortRanges'], (value) => GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

