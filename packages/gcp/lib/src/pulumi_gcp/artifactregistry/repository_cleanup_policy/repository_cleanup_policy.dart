// ignore_for_file: unused_element, unnecessary_cast

import '../repository_cleanup_policy_condition/repository_cleanup_policy_condition.dart';
import '../repository_cleanup_policy_most_recent_versions/repository_cleanup_policy_most_recent_versions.dart';

class RepositoryCleanupPolicy {
  /// Policy action.
  /// Possible values are: `DELETE`, `KEEP`.
  final String? action;

  /// Policy condition for matching versions.
  /// Structure is documented below.
  final RepositoryCleanupPolicyCondition? condition;

  /// The identifier for this object. Format specified above.
  final String id;

  /// Policy condition for retaining a minimum number of versions. May only be
  /// specified with a Keep action.
  /// Structure is documented below.
  final RepositoryCleanupPolicyMostRecentVersions? mostRecentVersions;

  RepositoryCleanupPolicy({
    this.action,
    this.condition,
    required this.id,
    this.mostRecentVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue.toMap();
    }
    map['id'] = id;
    final mostRecentVersionsValue = mostRecentVersions;
    if (mostRecentVersionsValue != null) {
      map['mostRecentVersions'] = mostRecentVersionsValue.toMap();
    }
    return map;
  }

  factory RepositoryCleanupPolicy.fromMap(Map<String, dynamic> map) {
    return RepositoryCleanupPolicy(
      action: map['action'] == null ? null : map['action'] as String,
      condition: map['condition'] == null
          ? null
          : RepositoryCleanupPolicyCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      mostRecentVersions: map['mostRecentVersions'] == null
          ? null
          : RepositoryCleanupPolicyMostRecentVersions.fromMap(
              (map['mostRecentVersions'] as Map).cast<String, dynamic>()),
    );
  }
}
