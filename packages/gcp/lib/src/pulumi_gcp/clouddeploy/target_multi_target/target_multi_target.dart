// ignore_for_file: unused_element, unnecessary_cast

class TargetMultiTarget {
  /// Required. The target_ids of this multiTarget.
  final List<String> targetIds;

  TargetMultiTarget({
    required this.targetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetIds'] = targetIds;
    return map;
  }

  factory TargetMultiTarget.fromMap(Map<String, dynamic> map) {
    return TargetMultiTarget(
      targetIds: (map['targetIds'] as List).cast<String>(),
    );
  }
}
