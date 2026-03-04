// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// DatabricksSparkJar activity.
class DatabricksSparkJarActivityResponse {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;

  /// Activity description.
  final pulumi.Input<String>? description;

  /// A list of libraries to be installed on the cluster that will execute the job.
  final pulumi.Input<List<Map<String, dynamic>>>? libraries;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;

  /// The full name of the class containing the main method to be executed. This class must be contained in a JAR provided as a library. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> mainClassName;

  /// Activity name.
  final pulumi.Input<String> name;

  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;

  /// Parameters that will be passed to the main method.
  final pulumi.Input<List<dynamic>>? parameters;

  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;

  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;

  /// Type of activity.
  /// Expected value is 'DatabricksSparkJar'.
  final pulumi.Input<String> type;

  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [DatabricksSparkJarActivityResponse].
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
  DatabricksSparkJarActivityResponse({
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
      'dependsOn':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActivityDependencyResponse>,
            List<Map<String, dynamic>>
          >(
            dependsOn,
            (value) =>
                pulumi.Input.encodeList<
                  ActivityDependencyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'libraries': ?libraries,
      'linkedServiceName':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReferenceResponse,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'mainClassName': mainClassName,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityPolicyResponse,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserPropertyResponse>,
            List<Map<String, dynamic>>
          >(
            userProperties,
            (value) =>
                pulumi.Input.encodeList<
                  UserPropertyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DatabricksSparkJarActivityResponse.fromMap(Map<String, dynamic> map) {
    return DatabricksSparkJarActivityResponse(
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActivityDependencyResponse>(
            guardedValue,
            (value) => ActivityDependencyResponse.fromMap(
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
      libraries: (() {
        final guardedValue = map['libraries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<Map<String, dynamic>>(),
        );
      })(),
      linkedServiceName: (() {
        final guardedValue = map['linkedServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mainClassName: pulumi.Input.fromValue(map['mainClassName']),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() {
        final guardedValue = map['onInactiveMarkAs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActivityPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
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
          pulumi.Input.decodeList<UserPropertyResponse>(
            guardedValue,
            (value) => UserPropertyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
