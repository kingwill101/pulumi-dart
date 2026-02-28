// ignore_for_file: unused_element, unnecessary_cast


/// Information specifying a multiTarget.
class MultiTargetResponse {
  /// The target_ids of this multiTarget.
  final List<String> targetIds;

  /// Creates a new [MultiTargetResponse].
  /// [targetIds] The target_ids of this multiTarget.
  MultiTargetResponse({
    required this.targetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetIds': targetIds,
    };
  }

  factory MultiTargetResponse.fromMap(Map<String, dynamic> map) {
    return MultiTargetResponse(
      targetIds: (map['targetIds'] as List).cast<String>(),
    );
  }
}

