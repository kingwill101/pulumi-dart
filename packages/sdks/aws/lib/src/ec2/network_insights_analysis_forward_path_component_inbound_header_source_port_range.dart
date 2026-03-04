// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange {
  final pulumi.Input<int>? from;
  final pulumi.Input<int>? to;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': ?from, 'to': ?to};
  }

  factory NetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisForwardPathComponentInboundHeaderSourcePortRange(
      from: (() {
        final guardedValue = map['from'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      to: (() {
        final guardedValue = map['to'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
