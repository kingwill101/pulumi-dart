// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backup_plan_associations_association/get_backup_plan_associations_association.dart';

/// Result data returned by getBackupPlanAssociations.
class GetBackupPlanAssociationsResult {
  /// A list of the backup plan associations found.
  final List<GetBackupPlanAssociationsAssociation> associations;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// The ID of the project in which the resource belongs.
  final String project;
  final String? resourceType;

  GetBackupPlanAssociationsResult({
    required this.associations,
    required this.id,
    required this.location,
    required this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associations'] = pulumi.Input.encodeList<
        GetBackupPlanAssociationsAssociation,
        Map<String, dynamic>>(associations, (value) => value.toMap());
    map['id'] = id;
    map['location'] = location;
    map['project'] = project;
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    return map;
  }

  factory GetBackupPlanAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationsResult(
      associations:
          pulumi.Input.decodeList<GetBackupPlanAssociationsAssociation>(
              map['associations'],
              (value) => GetBackupPlanAssociationsAssociation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}
