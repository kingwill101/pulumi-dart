import 'package:pulumi/pulumi.dart';
import 'instance_args14.dart';

/// Requests that a new DatabaseInstance be created. The state of a successfully created DatabaseInstance is ACTIVE. Only available for projects on the Blaze plan. Projects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo. Note that it might take a few minutes for billing enablement state to propagate to Firebase systems.
class Instance14 extends CustomResource {
  /// The globally unique identifier of the database instance.
  late final Output<String?> databaseId;

  /// Output Only. The globally unique hostname of the database.
  late final Output<String> databaseUrl;
  late final Output<String> location;

  /// The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// The database's lifecycle state. Read-only.
  late final Output<String> state;

  /// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
  late final Output<String> type;

  Instance14(
    String name, {
    InstanceArgs14? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firebasedatabase/v1beta:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.databaseId = registerOutput<String?>('databaseId');
    this.databaseUrl = registerOutput<String>('databaseUrl');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
  }
}
