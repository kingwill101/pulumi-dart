import 'package:pulumi/pulumi.dart';
import 'key_data_response.dart';
import 'workload_identity_pool_key_args.dart';

/// Create a new WorkloadIdentityPoolProviderKey in a WorkloadIdentityPoolProvider.
/// Auto-naming is currently not supported for this resource.
class WorkloadIdentityPoolKey extends CustomResource {
  /// Time after which the key will be permanently purged and cannot be recovered. Note that the key may get purged before this timestamp if the total limit of keys per provider is crossed.
  late final Output<String> expireTime;

  /// Immutable. Public half of the asymmetric key.
  late final Output<KeyDataResponse> keyData;
  late final Output<String> location;

  /// The resource name of the key.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> providerId;

  /// The state of the key.
  late final Output<String> state;

  /// The purpose of the key.
  late final Output<String> use;
  late final Output<String> workloadIdentityPoolId;

  /// Required. The ID to use for the key, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-].
  late final Output<String> workloadIdentityPoolProviderKeyId;

  WorkloadIdentityPoolKey(
    String name, {
    WorkloadIdentityPoolKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:iam/v1:WorkloadIdentityPoolKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.expireTime = Output.createUnknown<String>();
    this.keyData = Output.createUnknown<KeyDataResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.providerId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.use = Output.createUnknown<String>();
    this.workloadIdentityPoolId = Output.createUnknown<String>();
    this.workloadIdentityPoolProviderKeyId = Output.createUnknown<String>();
  }
}
