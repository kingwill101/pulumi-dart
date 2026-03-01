// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_volume_quota_rule_volume_quota_rule_args_doc}
/// The set of arguments for VolumeQuotaRule.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_quota_rule_volume_quota_rule_args_doc}
class VolumeQuotaRuleArgs {
  /// Description for the quota rule.
  final pulumi.Input<String>? description;

  /// The maximum allowed capacity in MiB.
  final pulumi.Input<int> diskLimitMib;

  /// Labels as key value pairs of the quota rule. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Loction of the quotaRule. QuotaRules are child resources of volumes and live in the same location.
  final pulumi.Input<String>? location;

  /// The resource name of the quotaRule.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The quota rule applies to the specified user or group.
  /// Valid targets for volumes with NFS protocol enabled:
  /// - UNIX UID for individual user quota
  /// - UNIX GID for individual group quota
  /// Valid targets for volumes with SMB protocol enabled:
  /// - Windows SID for individual user quota
  /// Leave empty for default quotas
  final pulumi.Input<String>? target;

  /// Types of Quota Rule.
  /// Possible values are: `INDIVIDUAL_USER_QUOTA`, `INDIVIDUAL_GROUP_QUOTA`, `DEFAULT_USER_QUOTA`, `DEFAULT_GROUP_QUOTA`.
  final pulumi.Input<String> type;

  /// Name of the volume to create the quotaRule in.
  final pulumi.Input<String> volumeName;

  /// Creates a new [VolumeQuotaRuleArgs].
  /// [description] Description for the quota rule.
  /// [diskLimitMib] The maximum allowed capacity in MiB.
  /// [labels] Labels as key value pairs of the quota rule. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Loction of the quotaRule. QuotaRules are child resources of volumes and live in the same location.
  /// [name] The resource name of the quotaRule.
  /// [project] The ID of the project in which the resource belongs.
  /// [target] The quota rule applies to the specified user or group.
  /// [type] Types of Quota Rule.
  /// [volumeName] Name of the volume to create the quotaRule in.
  VolumeQuotaRuleArgs({
    String? description,
    required int diskLimitMib,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? target,
    required String type,
    required String volumeName,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       diskLimitMib = pulumi.Input.asInput<int>(diskLimitMib),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       target = pulumi.Input.asOptionalInput<String>(target),
       type = pulumi.Input.asInput<String>(type),
       volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diskLimitMib': diskLimitMib,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'target': ?target,
      'type': type,
      'volumeName': volumeName,
    };
  }

  factory VolumeQuotaRuleArgs.fromMap(Map<String, dynamic> map) {
    return VolumeQuotaRuleArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      diskLimitMib: map['diskLimitMib'] as int,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      type: map['type'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}
