// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Databricks Job activity.
class DatabricksJobActivity {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;

  /// Activity description.
  final pulumi.Input<String>? description;

  /// The Id of the Databricks Job to be executed. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> jobId;

  /// Job parameters to be used for each run of this job. If the job takes a parameter that is not specified, the default value from the job will be used.
  final pulumi.Input<Map<String, dynamic>>? jobParameters;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;

  /// Activity name.
  final pulumi.Input<String> name;

  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;

  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;

  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;

  /// Type of activity.
  /// Expected value is 'DatabricksJob'.
  final pulumi.Input<String> type;

  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [DatabricksJobActivity].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [jobId] The Id of the Databricks Job to be executed. Type: string (or Expression with resultType string).
  /// [jobParameters] Job parameters to be used for each run of this job. If the job takes a parameter that is not specified, the default value from the job will be used.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  DatabricksJobActivity({
    this.dependsOn,
    this.description,
    required this.jobId,
    this.jobParameters,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'jobId': jobId,
      'jobParameters': ?jobParameters,
      'linkedServiceName':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReference,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityPolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
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

  factory DatabricksJobActivity.fromMap(Map<String, dynamic> map) {
    return DatabricksJobActivity(
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
      jobId: pulumi.Input.fromValue(map['jobId']),
      jobParameters: (() {
        final guardedValue = map['jobParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
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
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
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
