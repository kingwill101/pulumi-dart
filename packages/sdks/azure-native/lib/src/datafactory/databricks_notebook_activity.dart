// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// DatabricksNotebook activity.
class DatabricksNotebookActivity {
  /// Base parameters to be used for each run of this job.If the notebook takes a parameter that is not specified, the default value from the notebook will be used.
  final pulumi.Input<dynamic>? baseParameters;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// A list of libraries to be installed on the cluster that will execute the job.
  final pulumi.Input<List<dynamic>>? libraries;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// The absolute path of the notebook to be run in the Databricks Workspace. This path must begin with a slash. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> notebookPath;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'DatabricksNotebook'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [DatabricksNotebookActivity].
  /// [baseParameters] Base parameters to be used for each run of this job.If the notebook takes a parameter that is not specified, the default value from the notebook will be used.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [libraries] A list of libraries to be installed on the cluster that will execute the job.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [notebookPath] The absolute path of the notebook to be run in the Databricks Workspace. This path must begin with a slash. Type: string (or Expression with resultType string).
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  const DatabricksNotebookActivity({
    this.baseParameters,
    this.dependsOn,
    this.description,
    this.libraries,
    this.linkedServiceName,
    required this.name,
    required this.notebookPath,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseParameters': ?baseParameters,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'libraries': ?libraries,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'notebookPath': notebookPath,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabricksNotebookActivity.fromMap(Map<String, dynamic> map) {
    return DatabricksNotebookActivity(
      baseParameters: (() { final guardedValue = map['baseParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependency>(guardedValue, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      libraries: (() { final guardedValue = map['libraries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      linkedServiceName: (() { final guardedValue = map['linkedServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      notebookPath: pulumi.Input.fromValue(map['notebookPath']),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProperty>(guardedValue, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
