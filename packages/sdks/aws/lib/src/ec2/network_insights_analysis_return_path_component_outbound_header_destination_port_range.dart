// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange {
  final pulumi.Input<int?>? from;
  final pulumi.Input<int?>? to;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange].
  /// [from] Optional.
  /// [to] Optional.
  const NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentOutboundHeaderDestinationPortRange(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
