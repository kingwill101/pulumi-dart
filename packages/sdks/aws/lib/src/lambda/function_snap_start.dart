// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionSnapStart {
  /// When to apply snap start optimization. Valid value: `PublishedVersions`.
  final pulumi.Input<String> applyOn;
  /// Optimization status of the snap start configuration. Valid values are `On` and `Off`.
  final pulumi.Input<String?>? optimizationStatus;

  /// Creates a new [FunctionSnapStart].
  /// [applyOn] When to apply snap start optimization. Valid value: `PublishedVersions`.
  /// [optimizationStatus] Optimization status of the snap start configuration. Valid values are `On` and `Off`.
  const FunctionSnapStart({
    required this.applyOn,
    this.optimizationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOn': applyOn,
      'optimizationStatus': ?optimizationStatus,
    };
  }

  factory FunctionSnapStart.fromMap(Map<String, dynamic> map) {
    return FunctionSnapStart(
      applyOn: pulumi.Input.fromValue(map['applyOn'] as String),
      optimizationStatus: (() { final guardedValue = map['optimizationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
