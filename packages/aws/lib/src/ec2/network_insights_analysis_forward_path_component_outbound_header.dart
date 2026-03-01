// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_forward_path_component_outbound_header_destination_port_range.dart';
import 'network_insights_analysis_forward_path_component_outbound_header_source_port_range.dart';

class NetworkInsightsAnalysisForwardPathComponentOutboundHeader {
  final List<String>? destinationAddresses;
  final List<
    NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange
  >?
  destinationPortRanges;
  final String? protocol;
  final List<String>? sourceAddresses;
  final List<
    NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange
  >?
  sourcePortRanges;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentOutboundHeader].
  /// [destinationAddresses] Optional.
  /// [destinationPortRanges] Optional.
  /// [protocol] Optional.
  /// [sourceAddresses] Optional.
  /// [sourcePortRanges] Optional.
  NetworkInsightsAnalysisForwardPathComponentOutboundHeader({
    this.destinationAddresses,
    this.destinationPortRanges,
    this.protocol,
    this.sourceAddresses,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': ?destinationAddresses,
      'destinationPortRanges': ?destinationPortRanges == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange,
              Map<String, dynamic>
            >(destinationPortRanges!, (value) => value.toMap()),
      'protocol': ?protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourcePortRanges': ?sourcePortRanges == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange,
              Map<String, dynamic>
            >(sourcePortRanges!, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentOutboundHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisForwardPathComponentOutboundHeader(
      destinationAddresses: map['destinationAddresses'] == null
          ? null
          : (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: map['destinationPortRanges'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange
            >(
              map['destinationPortRanges'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceAddresses: map['sourceAddresses'] == null
          ? null
          : (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges: map['sourcePortRanges'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange
            >(
              map['sourcePortRanges'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
