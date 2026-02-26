// ignore_for_file: unused_element, unnecessary_cast

/// Standard rollout policy is the default policy for blue-green.
class StandardRolloutPolicy2 {
  /// Number of blue nodes to drain in a batch.
  final int? batchNodeCount;

  /// Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].
  final double? batchPercentage;

  /// Soak time after each batch gets drained. Default to zero.
  final String? batchSoakDuration;

  StandardRolloutPolicy2({
    this.batchNodeCount,
    this.batchPercentage,
    this.batchSoakDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchNodeCountValue = batchNodeCount;
    if (batchNodeCountValue != null) {
      map['batchNodeCount'] = batchNodeCountValue;
    }
    final batchPercentageValue = batchPercentage;
    if (batchPercentageValue != null) {
      map['batchPercentage'] = batchPercentageValue;
    }
    final batchSoakDurationValue = batchSoakDuration;
    if (batchSoakDurationValue != null) {
      map['batchSoakDuration'] = batchSoakDurationValue;
    }
    return map;
  }

  factory StandardRolloutPolicy2.fromMap(Map<String, dynamic> map) {
    return StandardRolloutPolicy2(
      batchNodeCount:
          map['batchNodeCount'] == null ? null : map['batchNodeCount'] as int,
      batchPercentage: map['batchPercentage'] == null
          ? null
          : map['batchPercentage'] as double,
      batchSoakDuration: map['batchSoakDuration'] == null
          ? null
          : map['batchSoakDuration'] as String,
    );
  }
}
