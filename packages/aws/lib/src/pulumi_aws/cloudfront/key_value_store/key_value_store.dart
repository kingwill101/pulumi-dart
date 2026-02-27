import 'package:pulumi/pulumi.dart' as pulumi;
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
class KeyValueStore extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifying your CloudFront KeyValueStore.
  late final pulumi.Output<String> arn;

  /// Comment.
  late final pulumi.Output<String?> comment;

  /// ETag hash of the KeyValueStore.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> lastModifiedTime;

  /// Unique name for your CloudFront KeyValueStore.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  late final pulumi.Output<KeyValueStoreTimeouts?> timeouts;

  KeyValueStore(
    String name, {
    KeyValueStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyValueStore:KeyValueStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.timeouts = registerOutput<KeyValueStoreTimeouts?>('timeouts');
  }
}
