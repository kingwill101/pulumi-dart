// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Databricks Job activity.
class DatabricksJobActivity {
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// The Id of the Databricks Job to be executed. Type: string (or Expression with resultType string).
  final dynamic jobId;
  /// Job parameters to be used for each run of this job. If the job takes a parameter that is not specified, the default value from the job will be used.
  final Map<String, dynamic>? jobParameters;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'DatabricksJob'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'jobId': jobId,
      'jobParameters': ?jobParameters,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory DatabricksJobActivity.fromMap(Map<String, dynamic> map) {
    return DatabricksJobActivity(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      jobId: map['jobId'],
      jobParameters: map['jobParameters'] == null ? null : (map['jobParameters'] as Map).cast<String, dynamic>(),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

