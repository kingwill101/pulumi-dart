import 'package:pulumi/pulumi.dart';
import 'workload_identity_pool_args.dart';

/// Creates a new WorkloadIdentityPool. You cannot reuse the name of a deleted pool until 30 days after deletion.
/// Auto-naming is currently not supported for this resource.
class WorkloadIdentityPool extends CustomResource {
  /// A description of the pool. Cannot exceed 256 characters.
  late final Output<String> description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  late final Output<bool> disabled;

  /// A display name for the pool. Cannot exceed 32 characters.
  late final Output<String> displayName;

  /// Time after which the workload identity pool will be permanently purged and cannot be recovered.
  late final Output<String> expireTime;
  late final Output<String> location;

  /// The resource name of the pool.
  late final Output<String> name;
  late final Output<String> project;

  /// The state of the pool.
  late final Output<String> state;

  /// Required. The ID to use for the pool, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final Output<String> workloadIdentityPoolId;

  WorkloadIdentityPool(
    String name, {
    WorkloadIdentityPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:iam/v1:WorkloadIdentityPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = Output.createUnknown<String>();
    this.disabled = Output.createUnknown<bool>();
    this.displayName = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.workloadIdentityPoolId = Output.createUnknown<String>();
  }
}
