// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBackupPlanAssociation.
class GetBackupPlanAssociationArgs {
  /// The id of Backupplan association resource.
  ///
  /// - - -
  final Input<String> backupPlanAssociationId;

  /// The location in which the Backupplan association resource belongs.
  final Input<String> location;
  final Input<String>? project;

  GetBackupPlanAssociationArgs({
    required this.backupPlanAssociationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupPlanAssociationId'] = backupPlanAssociationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupPlanAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationArgs(
      backupPlanAssociationId:
          Input.asInput<String>(map['backupPlanAssociationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
