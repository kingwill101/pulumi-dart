// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopNFeaturesByAttribution {
  /// Expected value is 'TopNByAttribution'.
  final pulumi.Input<String> filterType;
  /// The number of top features to include.
  final pulumi.Input<int>? top;

  /// Creates a new [TopNFeaturesByAttribution].
  /// [filterType] Expected value is 'TopNByAttribution'.
  /// [top] The number of top features to include.
  const TopNFeaturesByAttribution({
    required this.filterType,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': filterType,
      'top': ?top,
    };
  }

  factory TopNFeaturesByAttribution.fromMap(Map<String, dynamic> map) {
    return TopNFeaturesByAttribution(
      filterType: pulumi.Input.fromValue(map['filterType'] as String),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

