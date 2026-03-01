// ignore_for_file: unused_element, unnecessary_cast


class GetDbClustersClusterScaleOutStatus {
  /// Process.
  final String progress;
  /// Efficiency.
  final String ratio;

  /// Creates a new [GetDbClustersClusterScaleOutStatus].
  /// [progress] Process.
  /// [ratio] Efficiency.
  GetDbClustersClusterScaleOutStatus({
    required this.progress,
    required this.ratio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'progress': progress,
      'ratio': ratio,
    };
  }

  factory GetDbClustersClusterScaleOutStatus.fromMap(Map<String, dynamic> map) {
    return GetDbClustersClusterScaleOutStatus(
      progress: map['progress'] as String,
      ratio: map['ratio'] as String,
    );
  }
}

