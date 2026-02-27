import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyvaluestore_key_args.dart';

/// Resource for managing an AWS CloudFront KeyValueStore Key.
///
/// !> This resource manages individual key value pairs in a KeyValueStore. This can lead to high costs associated with accessing the CloudFront KeyValueStore API when performing terraform operations with many key value pairs defined. For large key value stores, consider the `aws.cloudfront.KeyvaluestoreKeysExclusive` resource to minimize the number of API calls made to the CloudFront KeyValueStore API.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `key_value_store_arn` (String) ARN of the CloudFront Key Value Store.
/// * `key` (String) Key name.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import CloudFront KeyValueStore Key using the `key_value_store_arn` and 'key' separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyvaluestoreKey:KeyvaluestoreKey example arn:aws:cloudfront::111111111111:key-value-store/8562g61f-caba-2845-9d99-b97diwae5d3c,someKey
/// ```
class KeyvaluestoreKey extends pulumi.CustomResource {
  /// Key to put.
  late final pulumi.Output<String> key;

  /// Amazon Resource Name (ARN) of the Key Value Store.
  late final pulumi.Output<String> keyValueStoreArn;

  /// Total size of the Key Value Store in bytes.
  late final pulumi.Output<int> totalSizeInBytes;

  /// Value to put.
  late final pulumi.Output<String> value;

  KeyvaluestoreKey(
    String name, {
    KeyvaluestoreKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyvaluestoreKey:KeyvaluestoreKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.keyValueStoreArn = registerOutput<String>('keyValueStoreArn');
    this.totalSizeInBytes = registerOutput<int>('totalSizeInBytes');
    this.value = registerOutput<String>('value');
  }
}
