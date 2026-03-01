import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_data_response.dart';
import 'workforce_pool_key_args.dart';

/// Creates a new WorkforcePoolProviderKey in a WorkforcePoolProvider.
/// Auto-naming is currently not supported for this resource.
class WorkforcePoolKey extends pulumi.CustomResource {
  /// The time after which the key will be permanently deleted and cannot be recovered. Note that the key may get purged before this time if the total limit of keys per provider is exceeded.
  late final pulumi.Output<String> expireTime;

  /// Immutable. Public half of the asymmetric key.
  late final pulumi.Output<KeyDataResponse> keyData;
  late final pulumi.Output<String> location;

  /// The resource name of the key.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> providerId;

  /// The state of the key.
  late final pulumi.Output<String> state;

  /// The purpose of the key.
  late final pulumi.Output<String> use;
  late final pulumi.Output<String> workforcePoolId;

  /// Required. The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  late final pulumi.Output<String> workforcePoolProviderKeyId;

  /// Creates a new [WorkforcePoolKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkforcePoolKey]. {@macro pulumi_iam_v1_workforce_pool_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkforcePoolKey(
    String name, {
    WorkforcePoolKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:iam/v1:WorkforcePoolKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.expireTime = registerOutput<String>('expireTime');
    this.keyData = registerOutput<KeyDataResponse>('keyData');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.providerId = registerOutput<String>('providerId');
    this.state = registerOutput<String>('state');
    this.use = registerOutput<String>('use');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
    this.workforcePoolProviderKeyId = registerOutput<String>(
      'workforcePoolProviderKeyId',
    );
  }
}
