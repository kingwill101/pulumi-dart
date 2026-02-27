import 'package:pulumi/pulumi.dart';
import '../key_value_store_timeouts/key_value_store_timeouts.dart';
import 'key_value_store_args.dart';

/// Resource for managing an AWS CloudFront Key Value Store.
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
/// * `name` (String) Name of the CloudFront Key Value Store.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import CloudFront Key Value Store using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyValueStore:KeyValueStore example example_store
/// ```
class KeyValueStore extends CustomResource {
  /// Amazon Resource Name (ARN) identifying your CloudFront KeyValueStore.
  late final Output<String> arn;

  /// Comment.
  late final Output<String?> comment;

  /// ETag hash of the KeyValueStore.
  late final Output<String> etag;
  late final Output<String> lastModifiedTime;

  /// Unique name for your CloudFront KeyValueStore.
  ///
  /// The following arguments are optional:
  late final Output<String> name;
  late final Output<KeyValueStoreTimeouts?> timeouts;

  KeyValueStore(
    String name, {
    KeyValueStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyValueStore:KeyValueStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.timeouts = registerOutput<KeyValueStoreTimeouts?>('timeouts');
  }
}
