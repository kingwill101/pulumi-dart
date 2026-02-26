// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_insights_analysis_return_path_component_inbound_header_destination_port_range/network_insights_analysis_return_path_component_inbound_header_destination_port_range.dart';
import '../network_insights_analysis_return_path_component_inbound_header_source_port_range/network_insights_analysis_return_path_component_inbound_header_source_port_range.dart';

class NetworkInsightsAnalysisReturnPathComponentInboundHeader {
  final List<String>? destinationAddresses;
  final List<
          NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>?
      destinationPortRanges;
  final String? protocol;
  final List<String>? sourceAddresses;
  final List<
          NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>?
      sourcePortRanges;

  NetworkInsightsAnalysisReturnPathComponentInboundHeader({
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
      map['destinationPortRanges'] = Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange,
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
      map['sourcePortRanges'] = Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange,
          Map<String,
              dynamic>>(sourcePortRangesValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkInsightsAnalysisReturnPathComponentInboundHeader.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentInboundHeader(
      destinationAddresses: map['destinationAddresses'] == null
          ? null
          : (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: map['destinationPortRanges'] == null
          ? null
          : Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>(
              map['destinationPortRanges'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange
                      .fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceAddresses: map['sourceAddresses'] == null
          ? null
          : (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges: map['sourcePortRanges'] == null
          ? null
          : Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>(
              map['sourcePortRanges'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
