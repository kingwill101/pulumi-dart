// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// Data Lake Analytics U-SQL activity.
class DataLakeAnalyticsUSQLActivityResponse {
  /// Compilation mode of U-SQL. Must be one of these values : Semantic, Full and SingleBox. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? compilationMode;
  /// The maximum number of nodes simultaneously used to run the job. Default value is 1. Type: integer (or Expression with resultType integer), minimum: 1.
  final pulumi.Input<dynamic>? degreeOfParallelism;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Parameters for U-SQL job request.
  final pulumi.Input<dynamic>? parameters;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// Determines which jobs out of all that are queued should be selected to run first. The lower the number, the higher the priority. Default value is 1000. Type: integer (or Expression with resultType integer), minimum: 1.
  final pulumi.Input<dynamic>? priority;
  /// Runtime version of the U-SQL engine to use. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? runtimeVersion;
  /// Script linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> scriptLinkedService;
  /// Case-sensitive path to folder that contains the U-SQL script. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> scriptPath;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'DataLakeAnalyticsU-SQL'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [DataLakeAnalyticsUSQLActivityResponse].
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
  const DataLakeAnalyticsUSQLActivityResponse({
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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'priority': ?priority,
      'runtimeVersion': ?runtimeVersion,
      'scriptLinkedService': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(scriptLinkedService, (value) => value.toMap()),
      'scriptPath': scriptPath,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataLakeAnalyticsUSQLActivityResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeAnalyticsUSQLActivityResponse(
      compilationMode: (() { final guardedValue = map['compilationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      degreeOfParallelism: (() { final guardedValue = map['degreeOfParallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedServiceName: (() { final guardedValue = map['linkedServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      scriptLinkedService: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['scriptLinkedService']! as Map).cast<String, dynamic>())),
      scriptPath: pulumi.Input.fromValue(map['scriptPath']),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
