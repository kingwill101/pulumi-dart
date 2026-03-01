// ignore_for_file: unused_element, unnecessary_cast

class DomainRuleBasedMatchingConflictResolution {
  /// How the auto-merging process should resolve conflicts between different profiles. Valid values are `RECENCY` and `SOURCE`
  final String conflictResolvingModel;

  /// The `ObjectType` name that is used to resolve profile merging conflicts when choosing `SOURCE` as the `ConflictResolvingModel`.
  final String? sourceName;

  /// Creates a new [DomainRuleBasedMatchingConflictResolution].
  /// [conflictResolvingModel] How the auto-merging process should resolve conflicts between different profiles. Valid values are `RECENCY` and `SOURCE`
  /// [sourceName] The `ObjectType` name that is used to resolve profile merging conflicts when choosing `SOURCE` as the `ConflictResolvingModel`.
  DomainRuleBasedMatchingConflictResolution({
    required this.conflictResolvingModel,
    this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictResolvingModel': conflictResolvingModel,
      'sourceName': ?sourceName,
    };
  }

  factory DomainRuleBasedMatchingConflictResolution.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainRuleBasedMatchingConflictResolution(
      conflictResolvingModel: map['conflictResolvingModel'] as String,
      sourceName: map['sourceName'] == null
          ? null
          : map['sourceName'] as String,
    );
  }
}
