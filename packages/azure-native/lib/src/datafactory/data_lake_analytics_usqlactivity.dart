// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Data Lake Analytics U-SQL activity.
class DataLakeAnalyticsUSQLActivity {
  /// Compilation mode of U-SQL. Must be one of these values : Semantic, Full and SingleBox. Type: string (or Expression with resultType string).
  final dynamic compilationMode;
  /// The maximum number of nodes simultaneously used to run the job. Default value is 1. Type: integer (or Expression with resultType integer), minimum: 1.
  final dynamic degreeOfParallelism;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Parameters for U-SQL job request.
  final Map<String, dynamic>? parameters;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Determines which jobs out of all that are queued should be selected to run first. The lower the number, the higher the priority. Default value is 1000. Type: integer (or Expression with resultType integer), minimum: 1.
  final dynamic priority;
  /// Runtime version of the U-SQL engine to use. Type: string (or Expression with resultType string).
  final dynamic runtimeVersion;
  /// Script linked service reference.
  final LinkedServiceReference scriptLinkedService;
  /// Case-sensitive path to folder that contains the U-SQL script. Type: string (or Expression with resultType string).
  final dynamic scriptPath;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'DataLakeAnalyticsU-SQL'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters,
      'policy': ?policy == null ? null : policy!.toMap(),
      'priority': ?priority,
      'runtimeVersion': ?runtimeVersion,
      'scriptLinkedService': scriptLinkedService.toMap(),
      'scriptPath': scriptPath,
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory DataLakeAnalyticsUSQLActivity.fromMap(Map<String, dynamic> map) {
    return DataLakeAnalyticsUSQLActivity(
      compilationMode: map['compilationMode'] == null ? null : map['compilationMode'],
      degreeOfParallelism: map['degreeOfParallelism'] == null ? null : map['degreeOfParallelism'],
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, dynamic>(),
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'],
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'],
      scriptLinkedService: LinkedServiceReference.fromMap((map['scriptLinkedService'] as Map).cast<String, dynamic>()),
      scriptPath: map['scriptPath'],
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

