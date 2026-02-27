import 'package:pulumi/pulumi.dart';
import '../keyvaluestore_keys_exclusive_resource_key_value_pair/keyvaluestore_keys_exclusive_resource_key_value_pair.dart';
import 'keyvaluestore_keys_exclusive_args.dart';

/// Resource for maintaining exclusive management of resource key value pairs defined in an AWS CloudFront KeyValueStore.
///
/// !> This resource takes exclusive ownership over key value pairs defined in a KeyValueStore. This includes removal of key value pairs which are not explicitly configured. To prevent persistent drift, ensure any `aws.cloudfront.KeyvaluestoreKey` resources managed alongside this resource have an equivalent `resource_key_value_pair` argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured key value pairs. It __will not__ delete the configured key value pairs from the KeyValueStore.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Disallow Key Value Pairs
///
/// To automatically remove any configured key value pairs, omit a `resource_key_value_pair` block.
///
/// > This will not __prevent__ key value pairs from being defined in a KeyValueStore via Terraform (or any other interface). This resource enables bringing key value pairs into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS CloudFront KeyValueStore Key Value Pairs using the `key_value_store_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyvaluestoreKeysExclusive:KeyvaluestoreKeysExclusive example arn:aws:cloudfront::111111111111:key-value-store/8562g61f-caba-2845-9d99-b97diwae5d3c
/// ```
class KeyvaluestoreKeysExclusive extends CustomResource {
  /// Amazon Resource Name (ARN) of the Key Value Store.
  ///
  /// The following arguments are optional:
  late final Output<String> keyValueStoreArn;

  /// Maximum resource key values pairs that will update in a single API request. AWS has a default quota of 50 keys or a 3 MB payload, whichever is reached first. Defaults to `50`.
  late final Output<int> maxBatchSize;

  /// A list of all resource key value pairs associated with the KeyValueStore.
  /// See `resource_key_value_pair` below.
  late final Output<List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>?>
      resourceKeyValuePairs;

  /// Total size of the Key Value Store in bytes.
  late final Output<int> totalSizeInBytes;

  KeyvaluestoreKeysExclusive(
    String name, {
    KeyvaluestoreKeysExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyvaluestoreKeysExclusive:KeyvaluestoreKeysExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.keyValueStoreArn = registerOutput<String>('keyValueStoreArn');
    this.maxBatchSize = registerOutput<int>('maxBatchSize');
    this.resourceKeyValuePairs =
        registerOutput<List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>?>(
            'resourceKeyValuePairs');
    this.totalSizeInBytes = registerOutput<int>('totalSizeInBytes');
  }
}
