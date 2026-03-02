// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbClustersClusterScaleOutStatus {
  /// Process.
  final pulumi.Input<String> progress;
  /// Efficiency.
  final pulumi.Input<String> ratio;

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
      progress: (map['progress'] as String).input(),
      ratio: (map['ratio'] as String).input(),
    );
  }
}

