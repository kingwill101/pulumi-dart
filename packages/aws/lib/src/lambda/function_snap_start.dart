// ignore_for_file: unused_element, unnecessary_cast

class FunctionSnapStart {
  /// When to apply snap start optimization. Valid value: `PublishedVersions`.
  final String applyOn;

  /// Optimization status of the snap start configuration. Valid values are `On` and `Off`.
  final String? optimizationStatus;

  /// Creates a new [FunctionSnapStart].
  /// [applyOn] When to apply snap start optimization. Valid value: `PublishedVersions`.
  /// [optimizationStatus] Optimization status of the snap start configuration. Valid values are `On` and `Off`.
  FunctionSnapStart({
    required this.applyOn,
    this.optimizationStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applyOn'] = applyOn;
    final optimizationStatusValue = optimizationStatus;
    if (optimizationStatusValue != null) {
      map['optimizationStatus'] = optimizationStatusValue;
    }
    return map;
  }

  factory FunctionSnapStart.fromMap(Map<String, dynamic> map) {
    return FunctionSnapStart(
      applyOn: map['applyOn'] as String,
      optimizationStatus: map['optimizationStatus'] == null
          ? null
          : map['optimizationStatus'] as String,
    );
  }
}
