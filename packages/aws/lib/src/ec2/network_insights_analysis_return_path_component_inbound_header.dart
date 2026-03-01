// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_return_path_component_inbound_header_destination_port_range.dart';
import 'network_insights_analysis_return_path_component_inbound_header_source_port_range.dart';

class NetworkInsightsAnalysisReturnPathComponentInboundHeader {
  final List<String>? destinationAddresses;
  final List<
    NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange
  >?
  destinationPortRanges;
  final String? protocol;
  final List<String>? sourceAddresses;
  final List<
    NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange
  >?
  sourcePortRanges;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentInboundHeader].
  /// [destinationAddresses] Optional.
  /// [destinationPortRanges] Optional.
  /// [protocol] Optional.
  /// [sourceAddresses] Optional.
  /// [sourcePortRanges] Optional.
  NetworkInsightsAnalysisReturnPathComponentInboundHeader({
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
              NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange,
              Map<String, dynamic>
            >(destinationPortRanges!, (value) => value.toMap()),
      'protocol': ?protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourcePortRanges': ?sourcePortRanges == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange,
              Map<String, dynamic>
            >(sourcePortRanges!, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentInboundHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisReturnPathComponentInboundHeader(
      destinationAddresses: map['destinationAddresses'] == null
          ? null
          : (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: map['destinationPortRanges'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange
            >(
              map['destinationPortRanges'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange.fromMap(
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
              NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange
            >(
              map['sourcePortRanges'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
