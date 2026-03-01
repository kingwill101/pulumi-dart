// ignore_for_file: unused_element, unnecessary_cast

class TargetMultiTarget {
  /// Required. The target_ids of this multiTarget.
  final List<String> targetIds;

  /// Creates a new [TargetMultiTarget].
  /// [targetIds] Required. The target_ids of this multiTarget.
  TargetMultiTarget({required this.targetIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetIds': targetIds};
  }

  factory TargetMultiTarget.fromMap(Map<String, dynamic> map) {
    return TargetMultiTarget(
      targetIds: (map['targetIds'] as List).cast<String>(),
    );
  }
}
