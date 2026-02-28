// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_return_path_component_outbound_header_destination_port_range.dart';
import 'network_insights_analysis_return_path_component_outbound_header_source_port_range.dart';

class NetworkInsightsAnalysisReturnPathComponentOutboundHeader {
  final List<String>? destinationAddresses;
  final List<
          NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>?
      destinationPortRanges;
  final String? protocol;
  final List<String>? sourceAddresses;
  final List<
          NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>?
      sourcePortRanges;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentOutboundHeader].
  /// [destinationAddresses] Optional.
  /// [destinationPortRanges] Optional.
  /// [protocol] Optional.
  /// [sourceAddresses] Optional.
  /// [sourcePortRanges] Optional.
  NetworkInsightsAnalysisReturnPathComponentOutboundHeader({
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
          NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange,
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
          NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange,
          Map<String,
              dynamic>>(sourcePortRangesValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkInsightsAnalysisReturnPathComponentOutboundHeader.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentOutboundHeader(
      destinationAddresses: map['destinationAddresses'] == null
          ? null
          : (map['destinationAddresses'] as List).cast<String>(),
      destinationPortRanges: map['destinationPortRanges'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>(
              map['destinationPortRanges'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange
                      .fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceAddresses: map['sourceAddresses'] == null
          ? null
          : (map['sourceAddresses'] as List).cast<String>(),
      sourcePortRanges: map['sourcePortRanges'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>(
              map['sourcePortRanges'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
