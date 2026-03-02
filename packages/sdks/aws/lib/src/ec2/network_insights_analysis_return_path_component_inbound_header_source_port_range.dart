// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange {
  final pulumi.Input<int>? from;
  final pulumi.Input<int>? to;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange({
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
      from: map['from'] == null ? null : ((map['from'] as int).input()).input(),
      to: map['to'] == null ? null : ((map['to'] as int).input()).input(),
    );
  }
}

