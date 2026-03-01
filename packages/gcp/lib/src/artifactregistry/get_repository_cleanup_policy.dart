// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_cleanup_policy_condition.dart';
import 'get_repository_cleanup_policy_most_recent_version.dart';

class GetRepositoryCleanupPolicy {
  /// Policy action. Possible values: ["DELETE", "KEEP"]
  final String action;

  /// Policy condition for matching versions.
  final List<GetRepositoryCleanupPolicyCondition> conditions;
  final String id;

  /// Policy condition for retaining a minimum number of versions. May only be
  /// specified with a Keep action.
  final List<GetRepositoryCleanupPolicyMostRecentVersion> mostRecentVersions;

  /// Creates a new [GetRepositoryCleanupPolicy].
  /// [action] Policy action. Possible values: ["DELETE", "KEEP"]
  /// [conditions] Policy condition for matching versions.
  /// [id] Required.
  /// [mostRecentVersions] Policy condition for retaining a minimum number of versions. May only be
  GetRepositoryCleanupPolicy({
    required this.action,
    required this.conditions,
    required this.id,
    required this.mostRecentVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'conditions':
          pulumi.Input.encodeList<
            GetRepositoryCleanupPolicyCondition,
            Map<String, dynamic>
          >(conditions, (value) => value.toMap()),
      'id': id,
      'mostRecentVersions':
          pulumi.Input.encodeList<
            GetRepositoryCleanupPolicyMostRecentVersion,
            Map<String, dynamic>
          >(mostRecentVersions, (value) => value.toMap()),
    };
  }

  factory GetRepositoryCleanupPolicy.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCleanupPolicy(
      action: map['action'] as String,
      conditions: pulumi.Input.decodeList<GetRepositoryCleanupPolicyCondition>(
        map['conditions'],
        (value) => GetRepositoryCleanupPolicyCondition.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      mostRecentVersions:
          pulumi.Input.decodeList<GetRepositoryCleanupPolicyMostRecentVersion>(
            map['mostRecentVersions'],
            (value) => GetRepositoryCleanupPolicyMostRecentVersion.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
