import 'package:pulumi/pulumi.dart';
import '../bucket_objectv2_override_provider/bucket_objectv2_override_provider.dart';
import 'bucket_objectv2_args.dart';

/// Provides an S3 object resource.
///
/// ## Example Usage
///
/// ### Uploading a file to a bucket
///
///
///
/// ### Encrypting with KMS Key
///
///
///
/// ### Server Side Encryption with S3 Default Master Key
///
///
///
/// ### Server Side Encryption with AWS-Managed Key
///
///
///
/// ### S3 Object Lock
///
///
///
/// ### Ignoring Provider `default_tags`
///
/// S3 objects support a [maximum of 10 tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).
/// If the resource's own `tags` and the provider-level `default_tags` would together lead to more than 10 tags on an S3 object, use the `override_provider` configuration block to suppress any provider-level `default_tags`.
///
/// > S3 objects stored in Amazon S3 Express directory buckets do not support tags, so any provider-level `default_tags` must be suppressed.
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) S3 bucket name.
/// * `key` (String) Object key.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Import using S3 URL syntax:
///
///
/// **Using `pulumi import` to import** objects using the `id` or S3 URL. For example:
///
/// Import using the `id`, which is the bucket name and the key together:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectv2:BucketObjectv2 example some-bucket-name/some/key.txt
/// ```
///
/// Import using S3 URL syntax:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectv2:BucketObjectv2 example s3://some-bucket-name/some/key.txt
/// ```
class BucketObjectv2 extends CustomResource {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, and `bucket-owner-full-control`.
  late final Output<String> acl;

  /// ARN of the object.
  late final Output<String> arn;

  /// Name of the bucket to put the file in. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified.
  late final Output<String> bucket;

  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  late final Output<bool> bucketKeyEnabled;

  /// Caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  late final Output<String?> cacheControl;

  /// Indicates the algorithm used to create the checksum for the object. If a value is specified and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `CRC32`, `CRC32C`, `CRC64NVME`, `SHA1`, `SHA256`.
  late final Output<String?> checksumAlgorithm;

  /// The base64-encoded, 32-bit CRC32 checksum of the object.
  late final Output<String> checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object.
  late final Output<String> checksumCrc32c;

  /// The base64-encoded, 64-bit CRC64NVME checksum of the object.
  late final Output<String> checksumCrc64nvme;

  /// The base64-encoded, 160-bit SHA-1 digest of the object.
  late final Output<String> checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object.
  late final Output<String> checksumSha256;

  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  late final Output<String?> content;

  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  late final Output<String?> contentBase64;

  /// Presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  late final Output<String?> contentDisposition;

  /// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  late final Output<String?> contentEncoding;

  /// Language the content is in e.g., en-US or en-GB.
  late final Output<String?> contentLanguage;

  /// Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
  late final Output<String> contentType;

  /// Triggers updates when the value changes. This attribute is not compatible with KMS encryption, `kms_key_id` or `server_side_encryption = "aws:kms"`, also if an object is larger than 16 MB, the AWS Management Console will upload or copy that object as a Multipart Upload, and therefore the ETag will not be an MD5 digest (see `source_hash` instead).
  late final Output<String> etag;

  /// Whether to allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  late final Output<bool?> forceDestroy;

  /// Name of the object once it is in the bucket.
  ///
  /// The following arguments are optional:
  late final Output<String> key;

  /// ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the `aws.kms.Key` resource, use the `arn` attribute. If referencing the `aws.kms.Alias` data source or resource, use the `target_key_arn` attribute. The provider will only perform drift detection if a configuration value is provided.
  late final Output<String> kmsKeyId;

  /// Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  late final Output<Map<String, String>?> metadata;

  /// [Legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
  late final Output<String?> objectLockLegalHoldStatus;

  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  late final Output<String?> objectLockMode;

  /// Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  late final Output<String?> objectLockRetainUntilDate;

  /// Override provider-level configuration options. See Override Provider below for more details.
  late final Output<BucketObjectv2OverrideProvider?> overrideProvider;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Server-side encryption of the object in S3. Valid values are `"AES256"`, `"aws:kms"`, `"aws:kms:dsse"`, and `"aws:fsx"`.
  late final Output<String> serverSideEncryption;

  /// Path to a file that will be read and uploaded as raw bytes for the object content.
  late final Output<dynamic> source;

  /// Triggers updates like `etag` but useful to address `etag` encryption limitations. (The value is only stored in state and not saved by AWS.)
  late final Output<String?> sourceHash;

  /// [Storage Class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html#AmazonS3-PutObject-request-header-StorageClass) for the object. Defaults to "`STANDARD`".
  late final Output<String> storageClass;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Unique version ID value for the object, if bucket versioning is enabled.
  late final Output<String> versionId;

  /// Target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  ///
  /// If no content is provided through `source`, `content` or `content_base64`, then the object will be empty.
  ///
  /// > **Note:** If you specify `content_encoding` you are responsible for encoding the body appropriately. `source`, `content`, and `content_base64` all expect already encoded/compressed bytes.
  ///
  /// > **Note:** The provider ignores all leading `/`s in the object's `key` and treats multiple `/`s in the rest of the object's `key` as a single `/`, so values of `/index.html` and `index.html` correspond to the same S3 object as do `first//second///third//` and `first/second/third/`.
  late final Output<String?> websiteRedirect;

  BucketObjectv2(
    String name, {
    BucketObjectv2Args? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketObjectv2:BucketObjectv2',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String>('acl');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.bucketKeyEnabled = registerOutput<bool>('bucketKeyEnabled');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.checksumAlgorithm = registerOutput<String?>('checksumAlgorithm');
    this.checksumCrc32 = registerOutput<String>('checksumCrc32');
    this.checksumCrc32c = registerOutput<String>('checksumCrc32c');
    this.checksumCrc64nvme = registerOutput<String>('checksumCrc64nvme');
    this.checksumSha1 = registerOutput<String>('checksumSha1');
    this.checksumSha256 = registerOutput<String>('checksumSha256');
    this.content = registerOutput<String?>('content');
    this.contentBase64 = registerOutput<String?>('contentBase64');
    this.contentDisposition = registerOutput<String?>('contentDisposition');
    this.contentEncoding = registerOutput<String?>('contentEncoding');
    this.contentLanguage = registerOutput<String?>('contentLanguage');
    this.contentType = registerOutput<String>('contentType');
    this.etag = registerOutput<String>('etag');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.key = registerOutput<String>('key');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.objectLockLegalHoldStatus =
        registerOutput<String?>('objectLockLegalHoldStatus');
    this.objectLockMode = registerOutput<String?>('objectLockMode');
    this.objectLockRetainUntilDate =
        registerOutput<String?>('objectLockRetainUntilDate');
    this.overrideProvider =
        registerOutput<BucketObjectv2OverrideProvider?>('overrideProvider');
    this.region = registerOutput<String>('region');
    this.serverSideEncryption = registerOutput<String>('serverSideEncryption');
    this.source = registerOutput<dynamic>('source');
    this.sourceHash = registerOutput<String?>('sourceHash');
    this.storageClass = registerOutput<String>('storageClass');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionId = registerOutput<String>('versionId');
    this.websiteRedirect = registerOutput<String?>('websiteRedirect');
  }
}
