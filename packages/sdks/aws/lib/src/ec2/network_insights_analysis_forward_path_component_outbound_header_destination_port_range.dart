// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange {
  final pulumi.Input<int>? from;
  final pulumi.Input<int>? to;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange].
  /// [from] Optional.
  /// [to] Optional.
  const NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentOutboundHeaderDestinationPortRange(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
