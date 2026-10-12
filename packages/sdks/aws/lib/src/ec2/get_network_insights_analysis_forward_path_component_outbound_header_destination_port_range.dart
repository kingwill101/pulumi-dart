// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange {
  final pulumi.Input<int> from;
  final pulumi.Input<int> to;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange].
  /// [from] Required.
  /// [to] Required.
  const GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange(
      from: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['from'])),
      to: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['to'])),
    );
  }
}
