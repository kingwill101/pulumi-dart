// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// DatabricksSparkPython activity.
class DatabricksSparkPythonActivityResponse {
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// A list of libraries to be installed on the cluster that will execute the job.
  final List<Map<String, dynamic>>? libraries;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Command line parameters that will be passed to the Python file.
  final List<dynamic>? parameters;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// The URI of the Python file to be executed. DBFS paths are supported. Type: string (or Expression with resultType string).
  final dynamic pythonFile;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'DatabricksSparkPython'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

  /// Creates a new [DatabricksSparkPythonActivityResponse].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [libraries] A list of libraries to be installed on the cluster that will execute the job.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [parameters] Command line parameters that will be passed to the Python file.
  /// [policy] Activity policy.
  /// [pythonFile] The URI of the Python file to be executed. DBFS paths are supported. Type: string (or Expression with resultType string).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  DatabricksSparkPythonActivityResponse({
    this.dependsOn,
    this.description,
    this.libraries,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.parameters,
    this.policy,
    required this.pythonFile,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'libraries': ?libraries,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters,
      'policy': ?policy == null ? null : policy!.toMap(),
      'pythonFile': pythonFile,
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory DatabricksSparkPythonActivityResponse.fromMap(Map<String, dynamic> map) {
    return DatabricksSparkPythonActivityResponse(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      libraries: map['libraries'] == null ? null : (map['libraries'] as List).cast<Map<String, dynamic>>(),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as List).cast<dynamic>(),
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      pythonFile: map['pythonFile'],
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

