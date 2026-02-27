// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_type4.dart';

/// The set of arguments for Instance.
class InstanceArgs14 {
  /// The globally unique identifier of the database instance.
  final Input<String>? databaseId;
  final Input<String>? location;

  /// The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  final Input<String>? name;
  final Input<String>? project;

  /// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
  final Input<InstanceType4>? type;

  InstanceArgs14({
    this.databaseId,
    this.location,
    this.name,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseIdValue = databaseId;
    if (databaseIdValue != null) {
      map['databaseId'] = databaseIdValue;
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
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<InstanceType4, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceArgs14.fromMap(Map<String, dynamic> map) {
    return InstanceArgs14(
      databaseId: Input.asOptionalInput<String>(map['databaseId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asOptionalInput<InstanceType4>(map['type']),
    );
  }
}
