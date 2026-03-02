// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisAlternatePathHint {
  final pulumi.Input<String> componentArn;
  final pulumi.Input<String> componentId;

  /// Creates a new [GetNetworkInsightsAnalysisAlternatePathHint].
  /// [componentArn] Required.
  /// [componentId] Required.
  GetNetworkInsightsAnalysisAlternatePathHint({
    required this.componentArn,
    required this.componentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentArn': componentArn,
      'componentId': componentId,
    };
  }

  factory GetNetworkInsightsAnalysisAlternatePathHint.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisAlternatePathHint(
      componentArn: (map['componentArn'] as String).input(),
      componentId: (map['componentId'] as String).input(),
    );
  }
}

