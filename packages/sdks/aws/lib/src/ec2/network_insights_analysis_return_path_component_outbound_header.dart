// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_return_path_component_outbound_header_destination_port_range.dart';
import 'network_insights_analysis_return_path_component_outbound_header_source_port_range.dart';

class NetworkInsightsAnalysisReturnPathComponentOutboundHeader {
  final pulumi.Input<List<String>>? destinationAddresses;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>>? destinationPortRanges;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<List<String>>? sourceAddresses;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>>? sourcePortRanges;

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
    return <String, dynamic>{
      'destinationAddresses': ?destinationAddresses,
      'destinationPortRanges': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourcePortRanges': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentOutboundHeader.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentOutboundHeader(
      destinationAddresses: map['destinationAddresses'] == null ? null : (((map['destinationAddresses'] as List).cast<String>()).input()).input(),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : ((pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange>(map['destinationPortRanges']!, (value) => NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : (((map['sourceAddresses'] as List).cast<String>()).input()).input(),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : ((pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange>(map['sourcePortRanges']!, (value) => NetworkInsightsAnalysisReturnPathComponentOutboundHeaderSourcePortRange.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

