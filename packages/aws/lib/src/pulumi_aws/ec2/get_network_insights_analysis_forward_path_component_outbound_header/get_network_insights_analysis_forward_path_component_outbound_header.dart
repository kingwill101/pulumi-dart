// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_analysis_forward_path_component_outbound_header_destination_port_range/get_network_insights_analysis_forward_path_component_outbound_header_destination_port_range.dart';
import '../get_network_insights_analysis_forward_path_component_outbound_header_source_port_range/get_network_insights_analysis_forward_path_component_outbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader {
  final List<String> destinationAddresses;
  final List<
          GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange>
      destinationPortRanges;
  final String protocol;
  final List<String> sourceAddresses;
  final List<
          GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange>
      sourcePortRanges;

  GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader({
    required this.destinationAddresses,
    required this.destinationPortRanges,
    required this.protocol,
    required this.sourceAddresses,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationAddresses'] = destinationAddresses;
    map['destinationPortRanges'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange,
        Map<String, dynamic>>(destinationPortRanges, (value) => value.toMap());
    map['protocol'] = protocol;
    map['sourceAddresses'] = sourceAddresses;
    map['sourcePortRanges'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange,
        Map<String, dynamic>>(sourcePortRanges, (value) => value.toMap());
    return map;
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader(
      destinationAddresses:
          (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange>(
          map['destinationPortRanges'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      sourceAddresses: (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange>(
          map['sourcePortRanges'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
