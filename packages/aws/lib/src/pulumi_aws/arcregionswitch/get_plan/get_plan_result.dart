// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPlan.
class GetPlanResult {
  final String arn;

  /// Description of the plan.
  final String description;

  /// Execution role ARN for the plan.
  final String executionRole;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the plan.
  final String name;

  /// Owner of the plan.
  final String owner;

  /// Primary region for the plan.
  final String primaryRegion;

  /// Recovery approach for the plan.
  final String recoveryApproach;

  /// Recovery time objective in minutes.
  final int recoveryTimeObjectiveMinutes;
  final String region;

  /// List of regions included in the plan.
  final List<String> regions;

  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Timestamp when the plan was last updated (RFC3339 format).
  final String updatedAt;

  /// Version of the plan.
  final String version;

  GetPlanResult({
    required this.arn,
    required this.description,
    required this.executionRole,
    required this.id,
    required this.name,
    required this.owner,
    required this.primaryRegion,
    required this.recoveryApproach,
    required this.recoveryTimeObjectiveMinutes,
    required this.region,
    required this.regions,
    required this.tags,
    required this.updatedAt,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['executionRole'] = executionRole;
    map['id'] = id;
    map['name'] = name;
    map['owner'] = owner;
    map['primaryRegion'] = primaryRegion;
    map['recoveryApproach'] = recoveryApproach;
    map['recoveryTimeObjectiveMinutes'] = recoveryTimeObjectiveMinutes;
    map['region'] = region;
    map['regions'] = regions;
    map['tags'] = tags;
    map['updatedAt'] = updatedAt;
    map['version'] = version;
    return map;
  }

  factory GetPlanResult.fromMap(Map<String, dynamic> map) {
    return GetPlanResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      executionRole: map['executionRole'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      owner: map['owner'] as String,
      primaryRegion: map['primaryRegion'] as String,
      recoveryApproach: map['recoveryApproach'] as String,
      recoveryTimeObjectiveMinutes: map['recoveryTimeObjectiveMinutes'] as int,
      region: map['region'] as String,
      regions: (map['regions'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      updatedAt: map['updatedAt'] as String,
      version: map['version'] as String,
    );
  }
}
