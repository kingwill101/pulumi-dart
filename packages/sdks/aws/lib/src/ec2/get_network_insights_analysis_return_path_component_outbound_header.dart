// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_return_path_component_outbound_header_destination_port_range.dart';
import 'get_network_insights_analysis_return_path_component_outbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader {
  final pulumi.Input<List<String>> destinationAddresses;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>> destinationPortRanges;
  final pulumi.Input<String> protocol;
  final pulumi.Input<List<String>> sourceAddresses;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>> sourcePortRanges;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader].
  /// [destinationAddresses] Required.
  /// [destinationPortRanges] Required.
  /// [protocol] Required.
  /// [sourceAddresses] Required.
  /// [sourcePortRanges] Required.
  const GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader({
    required this.destinationAddresses,
    required this.destinationPortRanges,
    required this.protocol,
    required this.sourceAddresses,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': destinationAddresses,
      'destinationPortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
      'sourceAddresses': sourceAddresses,
      'sourcePortRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader(
      destinationAddresses: pulumi.Input.fromValue((map['destinationAddresses'] as List).cast<String>()),
      destinationPortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>(map['destinationPortRanges']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange.fromMap((value as Map).cast<String, dynamic>()))),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sourceAddresses: pulumi.Input.fromValue((map['sourceAddresses'] as List).cast<String>()),
      sourcePortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>(map['sourcePortRanges']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

