import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_args.dart';

/// Creates a new WorkloadIdentityPool. You cannot reuse the name of a deleted pool until 30 days after deletion.
/// Auto-naming is currently not supported for this resource.
class WorkloadIdentityPool extends pulumi.CustomResource {
  /// A description of the pool. Cannot exceed 256 characters.
  late final pulumi.Output<String> description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  late final pulumi.Output<bool> disabled;

  /// A display name for the pool. Cannot exceed 32 characters.
  late final pulumi.Output<String> displayName;

  /// Time after which the workload identity pool will be permanently purged and cannot be recovered.
  late final pulumi.Output<String> expireTime;
  late final pulumi.Output<String> location;

  /// The resource name of the pool.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The state of the pool.
  late final pulumi.Output<String> state;

  /// Required. The ID to use for the pool, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workloadIdentityPoolId;

  /// Creates a new [WorkloadIdentityPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadIdentityPool]. {@macro pulumi_iam_v1_workload_identity_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadIdentityPool(
    String name, {
    WorkloadIdentityPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:iam/v1:WorkloadIdentityPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.description = registerOutput<String>('description');
    this.disabled = registerOutput<bool>('disabled');
    this.displayName = registerOutput<String>('displayName');
    this.expireTime = registerOutput<String>('expireTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId = registerOutput<String>(
      'workloadIdentityPoolId',
    );
  }
}
