import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';

/// Requests that a new DatabaseInstance be created. The state of a successfully created DatabaseInstance is ACTIVE. Only available for projects on the Blaze plan. Projects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo. Note that it might take a few minutes for billing enablement state to propagate to Firebase systems.
class Instance extends pulumi.CustomResource {
  /// The globally unique identifier of the database instance.
  late final pulumi.Output<String?> databaseId;

  /// Output Only. The globally unique hostname of the database.
  late final pulumi.Output<String> databaseUrl;
  late final pulumi.Output<String> location;

  /// The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The database's lifecycle state. Read-only.
  late final pulumi.Output<String> state;

  /// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
  late final pulumi.Output<String> type;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_firebasedatabase_v1beta_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:firebasedatabase/v1beta:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
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
