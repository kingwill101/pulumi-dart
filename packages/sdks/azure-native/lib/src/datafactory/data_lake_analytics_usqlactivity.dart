// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Data Lake Analytics U-SQL activity.
class DataLakeAnalyticsUSQLActivity {
  /// Compilation mode of U-SQL. Must be one of these values : Semantic, Full and SingleBox. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? compilationMode;

  /// The maximum number of nodes simultaneously used to run the job. Default value is 1. Type: integer (or Expression with resultType integer), minimum: 1.
  final pulumi.Input<dynamic>? degreeOfParallelism;

  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;

  /// Activity description.
  final pulumi.Input<String>? description;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;

  /// Activity name.
  final pulumi.Input<String> name;

  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;

  /// Parameters for U-SQL job request.
  final pulumi.Input<Map<String, dynamic>>? parameters;

  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;

  /// Determines which jobs out of all that are queued should be selected to run first. The lower the number, the higher the priority. Default value is 1000. Type: integer (or Expression with resultType integer), minimum: 1.
  final pulumi.Input<dynamic>? priority;

  /// Runtime version of the U-SQL engine to use. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? runtimeVersion;

  /// Script linked service reference.
  final pulumi.Input<LinkedServiceReference> scriptLinkedService;

  /// Case-sensitive path to folder that contains the U-SQL script. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> scriptPath;

  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;

  /// Type of activity.
  /// Expected value is 'DataLakeAnalyticsU-SQL'.
  final pulumi.Input<String> type;

  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [DataLakeAnalyticsUSQLActivity].
  /// [compilationMode] Compilation mode of U-SQL. Must be one of these values : Semantic, Full and SingleBox. Type: string (or Expression with resultType string).
  /// [degreeOfParallelism] The maximum number of nodes simultaneously used to run the job. Default value is 1. Type: integer (or Expression with resultType integer), minimum: 1.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [parameters] Parameters for U-SQL job request.
  /// [policy] Activity policy.
  /// [priority] Determines which jobs out of all that are queued should be selected to run first. The lower the number, the higher the priority. Default value is 1000. Type: integer (or Expression with resultType integer), minimum: 1.
  /// [runtimeVersion] Runtime version of the U-SQL engine to use. Type: string (or Expression with resultType string).
  /// [scriptLinkedService] Script linked service reference.
  /// [scriptPath] Case-sensitive path to folder that contains the U-SQL script. Type: string (or Expression with resultType string).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  DataLakeAnalyticsUSQLActivity({
    this.compilationMode,
    this.degreeOfParallelism,
    this.dependsOn,
    this.description,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.parameters,
    this.policy,
    this.priority,
    this.runtimeVersion,
    required this.scriptLinkedService,
    required this.scriptPath,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compilationMode': ?compilationMode,
      'degreeOfParallelism': ?degreeOfParallelism,
      'dependsOn':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActivityDependency>,
            List<Map<String, dynamic>>
          >(
            dependsOn,
            (value) =>
                pulumi.Input.encodeList<
                  ActivityDependency,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'linkedServiceName':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReference,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityPolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'priority': ?priority,
      'runtimeVersion': ?runtimeVersion,
      'scriptLinkedService':
          pulumi.Input.mapInputValue<
            LinkedServiceReference,
            Map<String, dynamic>
          >(scriptLinkedService, (value) => value.toMap()),
      'scriptPath': scriptPath,
      'state': ?state,
      'type': type,
      'userProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserProperty>,
            List<Map<String, dynamic>>
          >(
            userProperties,
            (value) =>
                pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory DataLakeAnalyticsUSQLActivity.fromMap(Map<String, dynamic> map) {
    return DataLakeAnalyticsUSQLActivity(
      compilationMode: (() {
        final guardedValue = map['compilationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      degreeOfParallelism: (() {
        final guardedValue = map['degreeOfParallelism'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActivityDependency>(
            guardedValue,
            (value) => ActivityDependency.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkedServiceName: (() {
        final guardedValue = map['linkedServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() {
        final guardedValue = map['onInactiveMarkAs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      runtimeVersion: (() {
        final guardedValue = map['runtimeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      scriptLinkedService: pulumi.Input.fromValue(
        LinkedServiceReference.fromMap(
          (map['scriptLinkedService']! as Map).cast<String, dynamic>(),
        ),
      ),
      scriptPath: pulumi.Input.fromValue(map['scriptPath']),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() {
        final guardedValue = map['userProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserProperty>(
            guardedValue,
            (value) =>
                UserProperty.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
