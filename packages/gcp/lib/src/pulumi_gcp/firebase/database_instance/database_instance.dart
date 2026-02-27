import 'package:pulumi/pulumi.dart';
import 'database_instance_args.dart';

/// A Firebase Realtime Database instance.
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/rest/database/database-management/rest)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/products/realtime-database)
///
/// ## Example Usage
///
/// ### Firebase Database Instance Basic
///
///
///
/// ### Firebase Database Instance Full
///
///
///
/// ### Firebase Database Instance Default Database
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{region}}/{{instance_id}}`
///
/// * `{{region}}/{{instance_id}}`
///
/// * `{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/databaseInstance:DatabaseInstance default projects/{{project}}/locations/{{region}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/databaseInstance:DatabaseInstance default {{project}}/{{region}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/databaseInstance:DatabaseInstance default {{region}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/databaseInstance:DatabaseInstance default {{instance_id}}
/// ```
class DatabaseInstance extends CustomResource {
  /// The database URL in the form of https://{instance-id}.firebaseio.com for us-central1 instances
  /// or https://{instance-id}.{region}.firebasedatabase.app in other regions.
  late final Output<String> databaseUrl;

  /// The intended database state. Possible values: ACTIVE, DISABLED.
  late final Output<String?> desiredState;

  /// The globally unique identifier of the Firebase Realtime Database instance.
  /// Instance IDs cannot be reused after deletion.
  late final Output<String> instanceId;

  /// The fully-qualified resource name of the Firebase Realtime Database, in
  /// the format: projects/PROJECT_NUMBER/locations/REGION_IDENTIFIER/instances/INSTANCE_ID
  /// PROJECT_NUMBER: The Firebase project's [`ProjectNumber`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number)
  /// Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A reference to the region where the Firebase Realtime database resides.
  /// Check all [available regions](https://firebase.google.com/docs/projects/locations#rtdb-locations)
  late final Output<String> region;

  /// The current database state. Set desired_state to :DISABLED to disable the database and :ACTIVE to reenable the database
  late final Output<String> state;

  /// The database type.
  /// Each project can create one default Firebase Realtime Database, which cannot be deleted once created.
  /// Creating user Databases is only available for projects on the Blaze plan.
  /// Projects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo.
  /// Default value is `USER_DATABASE`.
  /// Possible values are: `DEFAULT_DATABASE`, `USER_DATABASE`.
  late final Output<String?> type;

  DatabaseInstance(
    String name, {
    DatabaseInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/databaseInstance:DatabaseInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.databaseUrl = registerOutput<String>('databaseUrl');
    this.desiredState = registerOutput<String?>('desiredState');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String?>('type');
  }
}
