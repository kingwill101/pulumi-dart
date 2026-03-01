// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_database_instance_database_instance_args_doc}
/// The set of arguments for DatabaseInstance.
/// {@endtemplate}
/// {@macro pulumi_firebase_database_instance_database_instance_args_doc}
class DatabaseInstanceArgs {
  /// The intended database state. Possible values: ACTIVE, DISABLED.
  final pulumi.Input<String>? desiredState;

  /// The globally unique identifier of the Firebase Realtime Database instance.
  /// Instance IDs cannot be reused after deletion.
  final pulumi.Input<String> instanceId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region where the Firebase Realtime database resides.
  /// Check all [available regions](https://firebase.google.com/docs/projects/locations#rtdb-locations)
  final pulumi.Input<String> region;

  /// The database type.
  /// Each project can create one default Firebase Realtime Database, which cannot be deleted once created.
  /// Creating user Databases is only available for projects on the Blaze plan.
  /// Projects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo.
  /// Default value is `USER_DATABASE`.
  /// Possible values are: `DEFAULT_DATABASE`, `USER_DATABASE`.
  final pulumi.Input<String>? type;

  /// Creates a new [DatabaseInstanceArgs].
  /// [desiredState] The intended database state. Possible values: ACTIVE, DISABLED.
  /// [instanceId] The globally unique identifier of the Firebase Realtime Database instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region where the Firebase Realtime database resides.
  /// [type] The database type.
  DatabaseInstanceArgs({
    String? desiredState,
    required String instanceId,
    String? project,
    required String region,
    String? type,
  }) : desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': ?desiredState,
      'instanceId': instanceId,
      'project': ?project,
      'region': region,
      'type': ?type,
    };
  }

  factory DatabaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceArgs(
      desiredState: map['desiredState'] == null
          ? null
          : map['desiredState'] as String,
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
