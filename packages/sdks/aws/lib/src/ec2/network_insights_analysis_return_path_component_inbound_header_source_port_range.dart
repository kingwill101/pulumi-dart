// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange {
  final pulumi.Input<int?>? from;
  final pulumi.Input<int?>? to;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange].
  /// [from] Optional.
  /// [to] Optional.
  const NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
