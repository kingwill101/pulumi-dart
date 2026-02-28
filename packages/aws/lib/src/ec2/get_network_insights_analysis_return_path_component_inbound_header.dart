// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_return_path_component_inbound_header_destination_port_range.dart';
import 'get_network_insights_analysis_return_path_component_inbound_header_source_port_range.dart';

class GetNetworkInsightsAnalysisReturnPathComponentInboundHeader {
  final List<String> destinationAddresses;
  final List<
          GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>
      destinationPortRanges;
  final String protocol;
  final List<String> sourceAddresses;
  final List<
          GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>
      sourcePortRanges;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentInboundHeader].
  /// [destinationAddresses] Required.
  /// [destinationPortRanges] Required.
  /// [protocol] Required.
  /// [sourceAddresses] Required.
  /// [sourcePortRanges] Required.
  GetNetworkInsightsAnalysisReturnPathComponentInboundHeader({
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
        GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange,
        Map<String, dynamic>>(destinationPortRanges, (value) => value.toMap());
    map['protocol'] = protocol;
    map['sourceAddresses'] = sourceAddresses;
    map['sourcePortRanges'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange,
        Map<String, dynamic>>(sourcePortRanges, (value) => value.toMap());
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentInboundHeader.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentInboundHeader(
      destinationAddresses:
          (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>(
          map['destinationPortRanges'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      sourceAddresses: (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>(
          map['sourcePortRanges'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
