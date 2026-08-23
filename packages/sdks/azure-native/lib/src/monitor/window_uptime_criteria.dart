// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents criteria for determining uptime in window-based SLIs.
class WindowUptimeCriteria {
  /// Comparison operator used for uptime evaluation.
  final pulumi.Input<String> comparator;
  /// Threshold value used to determine uptime.
  final pulumi.Input<double> target;

  /// Creates a new [WindowUptimeCriteria].
  /// [comparator] Comparison operator used for uptime evaluation.
  /// [target] Threshold value used to determine uptime.
  const WindowUptimeCriteria({
    required this.comparator,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': comparator,
      'target': target,
    };
  }

  factory WindowUptimeCriteria.fromMap(Map<String, dynamic> map) {
    return WindowUptimeCriteria(
      comparator: pulumi.Input.fromValue(map['comparator'] as String),
      target: pulumi.Input.fromValue(map['target'] as double),
    );
  }
}
