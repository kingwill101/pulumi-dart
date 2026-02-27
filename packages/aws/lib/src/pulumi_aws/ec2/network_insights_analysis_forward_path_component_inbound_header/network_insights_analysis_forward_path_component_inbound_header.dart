// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_insights_analysis_forward_path_component_inbound_header_destination_port_range/network_insights_analysis_forward_path_component_inbound_header_destination_port_range.dart';
import '../network_insights_analysis_forward_path_component_inbound_header_source_port_range/network_insights_analysis_forward_path_component_inbound_header_source_port_range.dart';

class NetworkInsightsAnalysisForwardPathComponentInboundHeader {
  final List<String>? destinationAddresses;
  final List<
          NetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange>?
      destinationPortRanges;
  final String? protocol;
  final List<String>? sourceAddresses;
  final List<
          NetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange>?
      sourcePortRanges;

  NetworkInsightsAnalysisForwardPathComponentInboundHeader({
    this.destinationAddresses,
    this.destinationPortRanges,
    this.protocol,
    this.sourceAddresses,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationAddressesValue = destinationAddresses;
    if (destinationAddressesValue != null) {
      map['destinationAddresses'] = destinationAddressesValue;
    }
    final destinationPortRangesValue = destinationPortRanges;
    if (destinationPortRangesValue != null) {
      map['destinationPortRanges'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange,
          Map<String,
              dynamic>>(destinationPortRangesValue, (value) => value.toMap());
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final sourceAddressesValue = sourceAddresses;
    if (sourceAddressesValue != null) {
      map['sourceAddresses'] = sourceAddressesValue;
    }
    final sourcePortRangesValue = sourcePortRanges;
    if (sourcePortRangesValue != null) {
      map['sourcePortRanges'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange,
          Map<String,
              dynamic>>(sourcePortRangesValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkInsightsAnalysisForwardPathComponentInboundHeader.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentInboundHeader(
      destinationAddresses: map['destinationAddresses'] == null
          ? null
          : (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: map['destinationPortRanges'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange>(
              map['destinationPortRanges'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentInboundHeaderDestinationPortRange
                      .fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceAddresses: map['sourceAddresses'] == null
          ? null
          : (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges: map['sourcePortRanges'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange>(
              map['sourcePortRanges'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
