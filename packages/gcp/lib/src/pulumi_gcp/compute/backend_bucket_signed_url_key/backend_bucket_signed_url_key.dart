import 'package:pulumi/pulumi.dart';
import 'backend_bucket_signed_url_key_args.dart';

/// A key for signing Cloud CDN signed URLs for BackendBuckets.
///
///
/// To get more information about BackendBucketSignedUrlKey, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets)
/// * How-to Guides
/// * [Using Signed URLs](https://cloud.google.com/cdn/docs/using-signed-urls/)
///
///
///
/// ## Example Usage
///
/// ### Backend Bucket Signed Url Key
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class BackendBucketSignedUrlKey extends CustomResource {
  /// The backend bucket this signed URL key belongs.
  late final Output<String> backendBucket;

  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String> keyValue;

  /// Name of the signed URL key.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  BackendBucketSignedUrlKey(
    String name, {
    BackendBucketSignedUrlKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendBucketSignedUrlKey:BackendBucketSignedUrlKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backendBucket = registerOutput<String>('backendBucket');
    this.keyValue = registerOutput<String>('keyValue');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
