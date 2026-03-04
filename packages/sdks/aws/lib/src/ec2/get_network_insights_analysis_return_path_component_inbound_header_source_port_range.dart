// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange {
  final pulumi.Input<int> from;
  final pulumi.Input<int> to;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange(
      from: pulumi.Input.fromValue(map['from'] as int),
      to: pulumi.Input.fromValue(map['to'] as int),
    );
  }
}
