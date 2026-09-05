// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_return_path_component_inbound_header_destination_port_range.dart';
import 'network_insights_analysis_return_path_component_inbound_header_source_port_range.dart';

class NetworkInsightsAnalysisReturnPathComponentInboundHeader {
  final pulumi.Input<List<String>?>? destinationAddresses;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>?>? destinationPortRanges;
  final pulumi.Input<String?>? protocol;
  final pulumi.Input<List<String>?>? sourceAddresses;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>?>? sourcePortRanges;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentInboundHeader].
  /// [destinationAddresses] Optional.
  /// [destinationPortRanges] Optional.
  /// [protocol] Optional.
  /// [sourceAddresses] Optional.
  /// [sourcePortRanges] Optional.
  const NetworkInsightsAnalysisReturnPathComponentInboundHeader({
    this.destinationAddresses,
    this.destinationPortRanges,
    this.protocol,
    this.sourceAddresses,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': ?destinationAddresses,
      'destinationPortRanges': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourcePortRanges': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentInboundHeader.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentInboundHeader(
      destinationAddresses: (() { final guardedValue = map['destinationAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentInboundHeaderDestinationPortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
