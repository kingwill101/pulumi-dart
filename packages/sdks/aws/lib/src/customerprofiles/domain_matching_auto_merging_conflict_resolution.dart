// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMatchingAutoMergingConflictResolution {
  /// How the auto-merging process should resolve conflicts between different profiles. Valid values are `RECENCY` and `SOURCE`
  final pulumi.Input<String> conflictResolvingModel;
  /// The `ObjectType` name that is used to resolve profile merging conflicts when choosing `SOURCE` as the `ConflictResolvingModel`.
  final pulumi.Input<String>? sourceName;

  /// Creates a new [DomainMatchingAutoMergingConflictResolution].
  /// [conflictResolvingModel] How the auto-merging process should resolve conflicts between different profiles. Valid values are `RECENCY` and `SOURCE`
  /// [sourceName] The `ObjectType` name that is used to resolve profile merging conflicts when choosing `SOURCE` as the `ConflictResolvingModel`.
  DomainMatchingAutoMergingConflictResolution({
    required this.conflictResolvingModel,
    this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictResolvingModel': conflictResolvingModel,
      'sourceName': ?sourceName,
    };
  }

  factory DomainMatchingAutoMergingConflictResolution.fromMap(Map<String, dynamic> map) {
    return DomainMatchingAutoMergingConflictResolution(
      conflictResolvingModel: (map['conflictResolvingModel'] as String).input(),
      sourceName: map['sourceName'] == null ? null : ((map['sourceName'] as String).input()).input(),
    );
  }
}

