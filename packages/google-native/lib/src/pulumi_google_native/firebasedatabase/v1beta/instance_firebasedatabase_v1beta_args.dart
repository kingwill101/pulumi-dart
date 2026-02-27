// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_type_firebasedatabase_v1beta.dart';

/// The set of arguments for Instance.
class InstanceFirebasedatabaseV1betaArgs {
  /// The globally unique identifier of the database instance.
  final pulumi.Input<String>? databaseId;
  final pulumi.Input<String>? location;

  /// The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
  final pulumi.Input<InstanceTypeFirebasedatabaseV1beta>? type;

  InstanceFirebasedatabaseV1betaArgs({
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
      map['type'] = pulumi.Input.mapOptionalInputValue<
          InstanceTypeFirebasedatabaseV1beta,
          String>(typeValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceFirebasedatabaseV1betaArgs.fromMap(Map<String, dynamic> map) {
    return InstanceFirebasedatabaseV1betaArgs(
      databaseId: pulumi.Input.asOptionalInput<String>(map['databaseId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asOptionalInput<InstanceTypeFirebasedatabaseV1beta>(
          map['type']),
    );
  }
}
