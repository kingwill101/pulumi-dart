// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VolumeQuotaRule.
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

  VolumeQuotaRuleArgs({
    this.description,
    required this.diskLimitMib,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.target,
    required this.type,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['diskLimitMib'] = diskLimitMib;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    map['type'] = type;
    map['volumeName'] = volumeName;
    return map;
  }

  factory VolumeQuotaRuleArgs.fromMap(Map<String, dynamic> map) {
    return VolumeQuotaRuleArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      diskLimitMib: pulumi.Input.asInput<int>(map['diskLimitMib']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      target: pulumi.Input.asOptionalInput<String>(map['target']),
      type: pulumi.Input.asInput<String>(map['type']),
      volumeName: pulumi.Input.asInput<String>(map['volumeName']),
    );
  }
}
