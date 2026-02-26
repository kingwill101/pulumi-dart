// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'group_migration_target_type.dart';

/// The set of arguments for Group.
class GroupArgs7 {
  /// User-provided description of the group.
  final Input<String>? description;

  /// Display name is a user defined name for this group which can be updated.
  final Input<String>? displayName;

  /// Required. The group identifier.
  final Input<String> groupId;
  final Input<String>? location;

  /// Immutable. The target type of this group.
  final Input<GroupMigrationTargetType>? migrationTargetType;
  final Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  GroupArgs7({
    this.description,
    this.displayName,
    required this.groupId,
    this.location,
    this.migrationTargetType,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['groupId'] = groupId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final migrationTargetTypeValue = migrationTargetType;
    if (migrationTargetTypeValue != null) {
      map['migrationTargetType'] =
          Input.mapOptionalInputValue<GroupMigrationTargetType, String>(
              migrationTargetTypeValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory GroupArgs7.fromMap(Map<String, dynamic> map) {
    return GroupArgs7(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      groupId: Input.asInput<String>(map['groupId']),
      location: Input.asOptionalInput<String>(map['location']),
      migrationTargetType: Input.asOptionalInput<GroupMigrationTargetType>(
          map['migrationTargetType']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
