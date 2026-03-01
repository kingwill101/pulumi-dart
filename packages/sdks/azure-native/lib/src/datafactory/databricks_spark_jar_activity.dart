// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// DatabricksSparkJar activity.
class DatabricksSparkJarActivity {
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// A list of libraries to be installed on the cluster that will execute the job.
  final List<Map<String, dynamic>>? libraries;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// The full name of the class containing the main method to be executed. This class must be contained in a JAR provided as a library. Type: string (or Expression with resultType string).
  final dynamic mainClassName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Parameters that will be passed to the main method.
  final List<dynamic>? parameters;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'DatabricksSparkJar'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [DatabricksSparkJarActivity].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [libraries] A list of libraries to be installed on the cluster that will execute the job.
  /// [linkedServiceName] Linked service reference.
  /// [mainClassName] The full name of the class containing the main method to be executed. This class must be contained in a JAR provided as a library. Type: string (or Expression with resultType string).
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [parameters] Parameters that will be passed to the main method.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  DatabricksSparkJarActivity({
    this.dependsOn,
    this.description,
    this.libraries,
    this.linkedServiceName,
    required this.mainClassName,
    required this.name,
    this.onInactiveMarkAs,
    this.parameters,
    this.policy,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'libraries': ?libraries,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'mainClassName': mainClassName,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory DatabricksSparkJarActivity.fromMap(Map<String, dynamic> map) {
    return DatabricksSparkJarActivity(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      libraries: map['libraries'] == null ? null : (map['libraries'] as List).cast<Map<String, dynamic>>(),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      mainClassName: map['mainClassName'],
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as List).cast<dynamic>(),
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

