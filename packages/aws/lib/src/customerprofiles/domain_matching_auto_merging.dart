// ignore_for_file: unused_element, unnecessary_cast

import 'domain_matching_auto_merging_conflict_resolution.dart';
import 'domain_matching_auto_merging_consolidation.dart';

class DomainMatchingAutoMerging {
  /// A block that specifies how the auto-merging process should resolve conflicts between different profiles. Documented below.
  final DomainMatchingAutoMergingConflictResolution? conflictResolution;
  /// A block that specifies a list of matching attributes that represent matching criteria. If two profiles meet at least one of the requirements in the matching attributes list, they will be merged. Documented below.
  /// * `min_allowed_confidence_score_for_merging ` - (Optional) A number between 0 and 1 that represents the minimum confidence score required for profiles within a matching group to be merged during the auto-merge process. A higher score means higher similarity required to merge profiles.
  final DomainMatchingAutoMergingConsolidation? consolidation;
  /// The flag that enables the auto-merging of duplicate profiles.
  final bool enabled;
  final double? minAllowedConfidenceScoreForMerging;

  /// Creates a new [DomainMatchingAutoMerging].
  /// [conflictResolution] A block that specifies how the auto-merging process should resolve conflicts between different profiles. Documented below.
  /// [consolidation] A block that specifies a list of matching attributes that represent matching criteria. If two profiles meet at least one of the requirements in the matching attributes list, they will be merged. Documented below.
  /// [enabled] The flag that enables the auto-merging of duplicate profiles.
  /// [minAllowedConfidenceScoreForMerging] Optional.
  DomainMatchingAutoMerging({
    this.conflictResolution,
    this.consolidation,
    required this.enabled,
    this.minAllowedConfidenceScoreForMerging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictResolution': ?conflictResolution == null ? null : conflictResolution!.toMap(),
      'consolidation': ?consolidation == null ? null : consolidation!.toMap(),
      'enabled': enabled,
      'minAllowedConfidenceScoreForMerging': ?minAllowedConfidenceScoreForMerging,
    };
  }

  factory DomainMatchingAutoMerging.fromMap(Map<String, dynamic> map) {
    return DomainMatchingAutoMerging(
      conflictResolution: map['conflictResolution'] == null ? null : DomainMatchingAutoMergingConflictResolution.fromMap((map['conflictResolution'] as Map).cast<String, dynamic>()),
      consolidation: map['consolidation'] == null ? null : DomainMatchingAutoMergingConsolidation.fromMap((map['consolidation'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
      minAllowedConfidenceScoreForMerging: map['minAllowedConfidenceScoreForMerging'] == null ? null : map['minAllowedConfidenceScoreForMerging'] as double,
    );
  }
}

