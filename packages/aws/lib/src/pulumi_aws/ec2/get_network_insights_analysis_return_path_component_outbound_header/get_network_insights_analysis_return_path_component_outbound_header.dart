// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_network_insights_analysis_return_path_component_outbound_header_destination_port_range/get_network_insights_analysis_return_path_component_outbound_header_destination_port_range.dart';
import '../get_network_insights_analysis_return_path_component_outbound_header_source_port_range/get_network_insights_analysis_return_path_component_outbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader {
  final List<String> destinationAddresses;
  final List<
          GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>
      destinationPortRanges;
  final String protocol;
  final List<String> sourceAddresses;
  final List<
          GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>
      sourcePortRanges;

  GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader({
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
        GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange,
        Map<String, dynamic>>(destinationPortRanges, (value) => value.toMap());
    map['protocol'] = protocol;
    map['sourceAddresses'] = sourceAddresses;
    map['sourcePortRanges'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange,
        Map<String, dynamic>>(sourcePortRanges, (value) => value.toMap());
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader(
      destinationAddresses:
          (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>(
          map['destinationPortRanges'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      sourceAddresses: (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>(
          map['sourcePortRanges'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
