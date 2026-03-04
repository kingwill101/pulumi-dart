// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_forward_path_component_outbound_header_destination_port_range.dart';
import 'network_insights_analysis_forward_path_component_outbound_header_source_port_range.dart';

class NetworkInsightsAnalysisForwardPathComponentOutboundHeader {
  final pulumi.Input<List<String>>? destinationAddresses;
  final pulumi.Input<
    List<
      NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange
    >
  >?
  destinationPortRanges;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<List<String>>? sourceAddresses;
  final pulumi.Input<
    List<
      NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange
    >
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
      'destinationPortRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange
            >,
            List<Map<String, dynamic>>
          >(
            destinationPortRanges,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'protocol': ?protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourcePortRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange
            >,
            List<Map<String, dynamic>>
          >(
            sourcePortRanges,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentOutboundHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisForwardPathComponentOutboundHeader(
      destinationAddresses: (() {
        final guardedValue = map['destinationAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destinationPortRanges: (() {
        final guardedValue = map['destinationPortRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceAddresses: (() {
        final guardedValue = map['sourceAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sourcePortRanges: (() {
        final guardedValue = map['sourcePortRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
