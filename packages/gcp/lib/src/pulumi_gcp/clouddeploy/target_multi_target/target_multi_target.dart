// ignore_for_file: unused_element, unnecessary_cast

class TargetMultiTarget {
  /// Required. The<span pulumi-lang-nodejs=" targetIds " pulumi-lang-dotnet=" TargetIds " pulumi-lang-go=" targetIds " pulumi-lang-python=" target_ids " pulumi-lang-yaml=" targetIds " pulumi-lang-java=" targetIds "> target_ids </span>of this multiTarget.
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
