// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisAlternatePathHint {
  /// The Amazon Resource Name (ARN) of the component.
  final pulumi.Input<String>? componentArn;
  /// The ID of the component.
  final pulumi.Input<String>? componentId;

  /// Creates a new [NetworkInsightsAnalysisAlternatePathHint].
  /// [componentArn] The Amazon Resource Name (ARN) of the component.
  /// [componentId] The ID of the component.
  NetworkInsightsAnalysisAlternatePathHint({
    this.componentArn,
    this.componentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentArn': ?componentArn,
      'componentId': ?componentId,
    };
  }

  factory NetworkInsightsAnalysisAlternatePathHint.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisAlternatePathHint(
      componentArn: (() { final guardedValue = map['componentArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      componentId: (() { final guardedValue = map['componentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

