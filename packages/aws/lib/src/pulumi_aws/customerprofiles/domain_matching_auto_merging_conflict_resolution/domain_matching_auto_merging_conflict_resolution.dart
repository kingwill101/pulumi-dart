// ignore_for_file: unused_element, unnecessary_cast

class DomainMatchingAutoMergingConflictResolution {
  /// How the auto-merging process should resolve conflicts between different profiles. Valid values are `RECENCY` and `SOURCE`
  final String conflictResolvingModel;

  /// The `ObjectType` name that is used to resolve profile merging conflicts when choosing `SOURCE` as the `ConflictResolvingModel`.
  final String? sourceName;

  DomainMatchingAutoMergingConflictResolution({
    required this.conflictResolvingModel,
    this.sourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conflictResolvingModel'] = conflictResolvingModel;
    final sourceNameValue = sourceName;
    if (sourceNameValue != null) {
      map['sourceName'] = sourceNameValue;
    }
    return map;
  }

  factory DomainMatchingAutoMergingConflictResolution.fromMap(
      Map<String, dynamic> map) {
    return DomainMatchingAutoMergingConflictResolution(
      conflictResolvingModel: map['conflictResolvingModel'] as String,
      sourceName:
          map['sourceName'] == null ? null : map['sourceName'] as String,
    );
  }
}
