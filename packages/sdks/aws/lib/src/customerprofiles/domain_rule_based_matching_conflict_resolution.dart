// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainRuleBasedMatchingConflictResolution {
  /// How the auto-merging process should resolve conflicts between different profiles. Valid values are `RECENCY` and `SOURCE`
  final pulumi.Input<String> conflictResolvingModel;

  /// The `ObjectType` name that is used to resolve profile merging conflicts when choosing `SOURCE` as the `ConflictResolvingModel`.
  final pulumi.Input<String>? sourceName;

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
      conflictResolvingModel: pulumi.Input.fromValue(
        map['conflictResolvingModel'] as String,
      ),
      sourceName: (() {
        final guardedValue = map['sourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
