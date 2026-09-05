// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPlan.
class GetPlanResult {
  final String? arn;
  /// Description of the plan.
  final String? description;
  /// Execution role ARN for the plan.
  final String? executionRole;
  /// Name of the plan.
  final String? name;
  /// Owner of the plan.
  final String? owner;
  /// Primary region for the plan.
  final String? primaryRegion;
  /// Recovery approach for the plan.
  final String? recoveryApproach;
  /// Recovery time objective in minutes.
  final int? recoveryTimeObjectiveMinutes;
  final String? region;
  /// List of regions included in the plan.
  final List<String>? regions;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// Timestamp when the plan was last updated (RFC3339 format).
  final String? updatedAt;
  /// Version of the plan.
  final String? version;

  /// Creates a new [GetPlanResult].
  /// [arn] Optional.
  /// [description] Description of the plan.
  /// [executionRole] Execution role ARN for the plan.
  /// [name] Name of the plan.
  /// [owner] Owner of the plan.
  /// [primaryRegion] Primary region for the plan.
  /// [recoveryApproach] Recovery approach for the plan.
  /// [recoveryTimeObjectiveMinutes] Recovery time objective in minutes.
  /// [region] Optional.
  /// [regions] List of regions included in the plan.
  /// [tags] Map of tags assigned to the resource.
  /// [updatedAt] Timestamp when the plan was last updated (RFC3339 format).
  /// [version] Version of the plan.
  const GetPlanResult({
    this.arn,
    this.description,
    this.executionRole,
    this.name,
    this.owner,
    this.primaryRegion,
    this.recoveryApproach,
    this.recoveryTimeObjectiveMinutes,
    this.region,
    this.regions,
    this.tags,
    this.updatedAt,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'executionRole': ?executionRole,
      'name': ?name,
      'owner': ?owner,
      'primaryRegion': ?primaryRegion,
      'recoveryApproach': ?recoveryApproach,
      'recoveryTimeObjectiveMinutes': ?recoveryTimeObjectiveMinutes,
      'region': ?region,
      'regions': ?regions,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory GetPlanResult.fromMap(Map<String, dynamic> map) {
    return GetPlanResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionRole: (() { final guardedValue = map['executionRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryRegion: (() { final guardedValue = map['primaryRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoveryApproach: (() { final guardedValue = map['recoveryApproach']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoveryTimeObjectiveMinutes: (() { final guardedValue = map['recoveryTimeObjectiveMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
