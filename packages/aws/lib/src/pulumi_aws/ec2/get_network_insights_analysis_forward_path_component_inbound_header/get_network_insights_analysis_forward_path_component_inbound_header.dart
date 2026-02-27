// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_network_insights_analysis_forward_path_component_inbound_header_destination_port_range/get_network_insights_analysis_forward_path_component_inbound_header_destination_port_range.dart';
import '../get_network_insights_analysis_forward_path_component_inbound_header_source_port_range/get_network_insights_analysis_forward_path_component_inbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisForwardPathComponentInboundHeader {
  final List<String> destinationAddresses;
  final List<
          GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange>
      destinationPortRanges;
  final String protocol;
  final List<String> sourceAddresses;
  final List<
          GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange>
      sourcePortRanges;

  GetNetworkInsightsAnalysisForwardPathComponentInboundHeader({
    required this.destinationAddresses,
    required this.destinationPortRanges,
    required this.protocol,
    required this.sourceAddresses,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationAddresses'] = destinationAddresses;
    map['destinationPortRanges'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange,
        Map<String, dynamic>>(destinationPortRanges, (value) => value.toMap());
    map['protocol'] = protocol;
    map['sourceAddresses'] = sourceAddresses;
    map['sourcePortRanges'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange,
        Map<String, dynamic>>(sourcePortRanges, (value) => value.toMap());
    return map;
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentInboundHeader.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentInboundHeader(
      destinationAddresses:
          (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange>(
          map['destinationPortRanges'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      sourceAddresses: (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange>(
          map['sourcePortRanges'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
