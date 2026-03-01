// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// SQL stored procedure activity type.
class SqlServerStoredProcedureActivity {
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Stored procedure name. Type: string (or Expression with resultType string).
  final dynamic storedProcedureName;
  /// Value and type setting for stored procedure parameters. Example: "{Parameter1: {value: "1", type: "int"}}".
  final dynamic storedProcedureParameters;
  /// Type of activity.
  /// Expected value is 'SqlServerStoredProcedure'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [SqlServerStoredProcedureActivity].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storedProcedureName] Stored procedure name. Type: string (or Expression with resultType string).
  /// [storedProcedureParameters] Value and type setting for stored procedure parameters. Example: "{Parameter1: {value: "1", type: "int"}}".
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  SqlServerStoredProcedureActivity({
    this.dependsOn,
    this.description,
    required this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    required this.storedProcedureName,
    this.storedProcedureParameters,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'linkedServiceName': linkedServiceName.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'storedProcedureName': storedProcedureName,
      'storedProcedureParameters': ?storedProcedureParameters,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory SqlServerStoredProcedureActivity.fromMap(Map<String, dynamic> map) {
    return SqlServerStoredProcedureActivity(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      storedProcedureName: map['storedProcedureName'],
      storedProcedureParameters: map['storedProcedureParameters'] == null ? null : map['storedProcedureParameters'],
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

