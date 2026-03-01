// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_bucket_object_bucket_object_args_doc}
/// The set of arguments for BucketObject.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_object_bucket_object_args_doc}
class BucketObjectArgs {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Defaults to `private`.
  final pulumi.Input<String>? acl;
  /// Name of the bucket to put the file in. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified.
  final pulumi.Input<String> bucket;
  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  final pulumi.Input<bool>? bucketKeyEnabled;
  /// Caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  final pulumi.Input<String>? cacheControl;
  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  final pulumi.Input<String>? content;
  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  final pulumi.Input<String>? contentBase64;
  /// Presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  final pulumi.Input<String>? contentDisposition;
  /// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  final pulumi.Input<String>? contentEncoding;
  /// Language the content is in e.g., en-US or en-GB.
  final pulumi.Input<String>? contentLanguage;
  /// Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
  final pulumi.Input<String>? contentType;
  /// Triggers updates when the value changes. This attribute is not compatible with KMS encryption, `kms_key_id` or `server_side_encryption = "aws:kms"` (see `source_hash` instead).
  final pulumi.Input<String>? etag;
  /// Whether to allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  final pulumi.Input<bool>? forceDestroy;
  /// Name of the object once it is in the bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? key;
  /// ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the `aws.kms.Key` resource, use the `arn` attribute. If referencing the `aws.kms.Alias` data source or resource, use the `target_key_arn` attribute. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? kmsKeyId;
  /// Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  final pulumi.Input<Map<String, String>>? metadata;
  /// [Legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
  final pulumi.Input<String>? objectLockLegalHoldStatus;
  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  final pulumi.Input<String>? objectLockMode;
  /// Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  final pulumi.Input<String>? objectLockRetainUntilDate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Server-side encryption of the object in S3. Valid values are "`AES256`" and "`aws:kms`".
  final pulumi.Input<String>? serverSideEncryption;
  /// Path to a file that will be read and uploaded as raw bytes for the object content.
  final pulumi.Input<dynamic>? source;
  /// Triggers updates like `etag` but useful to address `etag` encryption limitations.
  final pulumi.Input<String>? sourceHash;
  /// [Storage Class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html#AmazonS3-PutObject-request-header-StorageClass) for the object. Defaults to "`STANDARD`".
  final pulumi.Input<String>? storageClass;
  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  ///
  /// If no content is provided through `source`, `content` or `content_base64`, then the object will be empty.
  ///
  /// > **Note:** If you specify `content_encoding` you are responsible for encoding the body appropriately. `source`, `content`, and `content_base64` all expect already encoded/compressed bytes.
  final pulumi.Input<String>? websiteRedirect;

  /// Creates a new [BucketObjectArgs].
  /// [acl] [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Defaults to `private`.
  /// [bucket] Name of the bucket to put the file in. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified.
  /// [bucketKeyEnabled] Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  /// [cacheControl] Caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  /// [content] Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  /// [contentBase64] Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  /// [contentDisposition] Presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  /// [contentEncoding] Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  /// [contentLanguage] Language the content is in e.g., en-US or en-GB.
  /// [contentType] Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
  /// [etag] Triggers updates when the value changes. This attribute is not compatible with KMS encryption, `kms_key_id` or `server_side_encryption = "aws:kms"` (see `source_hash` instead).
  /// [forceDestroy] Whether to allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  /// [key] Name of the object once it is in the bucket.
  /// [kmsKeyId] ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the `aws.kms.Key` resource, use the `arn` attribute. If referencing the `aws.kms.Alias` data source or resource, use the `target_key_arn` attribute. The provider will only perform drift detection if a configuration value is provided.
  /// [metadata] Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  /// [objectLockLegalHoldStatus] [Legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
  /// [objectLockMode] Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  /// [objectLockRetainUntilDate] Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverSideEncryption] Server-side encryption of the object in S3. Valid values are "`AES256`" and "`aws:kms`".
  /// [source] Path to a file that will be read and uploaded as raw bytes for the object content.
  /// [sourceHash] Triggers updates like `etag` but useful to address `etag` encryption limitations.
  /// [storageClass] [Storage Class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html#AmazonS3-PutObject-request-header-StorageClass) for the object. Defaults to "`STANDARD`".
  /// [tags] Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [websiteRedirect] Target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  BucketObjectArgs({
    pulumi.Output<String>? acl,
    required pulumi.Output<String> bucket,
    pulumi.Output<bool>? bucketKeyEnabled,
    pulumi.Output<String>? cacheControl,
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentBase64,
    pulumi.Output<String>? contentDisposition,
    pulumi.Output<String>? contentEncoding,
    pulumi.Output<String>? contentLanguage,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? etag,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? key,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? objectLockLegalHoldStatus,
    pulumi.Output<String>? objectLockMode,
    pulumi.Output<String>? objectLockRetainUntilDate,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serverSideEncryption,
    pulumi.Output<dynamic>? source,
    pulumi.Output<String>? sourceHash,
    pulumi.Output<String>? storageClass,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? websiteRedirect,
  }) :
      acl = pulumi.Input.asOptionalInput<String>(acl),
      bucket = pulumi.Input.asInput<String>(bucket),
      bucketKeyEnabled = pulumi.Input.asOptionalInput<bool>(bucketKeyEnabled),
      cacheControl = pulumi.Input.asOptionalInput<String>(cacheControl),
      content = pulumi.Input.asOptionalInput<String>(content),
      contentBase64 = pulumi.Input.asOptionalInput<String>(contentBase64),
      contentDisposition = pulumi.Input.asOptionalInput<String>(contentDisposition),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      contentLanguage = pulumi.Input.asOptionalInput<String>(contentLanguage),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      key = pulumi.Input.asOptionalInput<String>(key),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      objectLockLegalHoldStatus = pulumi.Input.asOptionalInput<String>(objectLockLegalHoldStatus),
      objectLockMode = pulumi.Input.asOptionalInput<String>(objectLockMode),
      objectLockRetainUntilDate = pulumi.Input.asOptionalInput<String>(objectLockRetainUntilDate),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverSideEncryption = pulumi.Input.asOptionalInput<String>(serverSideEncryption),
      source = pulumi.Input.asOptionalInput<dynamic>(source),
      sourceHash = pulumi.Input.asOptionalInput<String>(sourceHash),
      storageClass = pulumi.Input.asOptionalInput<String>(storageClass),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      websiteRedirect = pulumi.Input.asOptionalInput<String>(websiteRedirect);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'bucket': bucket,
      'bucketKeyEnabled': ?bucketKeyEnabled,
      'cacheControl': ?cacheControl,
      'content': ?content,
      'contentBase64': ?contentBase64,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'etag': ?etag,
      'forceDestroy': ?forceDestroy,
      'key': ?key,
      'kmsKeyId': ?kmsKeyId,
      'metadata': ?metadata,
      'objectLockLegalHoldStatus': ?objectLockLegalHoldStatus,
      'objectLockMode': ?objectLockMode,
      'objectLockRetainUntilDate': ?objectLockRetainUntilDate,
      'region': ?region,
      'serverSideEncryption': ?serverSideEncryption,
      'source': ?source,
      'sourceHash': ?sourceHash,
      'storageClass': ?storageClass,
      'tags': ?tags,
      'websiteRedirect': ?websiteRedirect,
    };
  }

  factory BucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return BucketObjectArgs(
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      bucketKeyEnabled: map['bucketKeyEnabled'] == null ? null : pulumi.Output.create<bool>(map['bucketKeyEnabled'] as bool),
      cacheControl: map['cacheControl'] == null ? null : pulumi.Output.create<String>(map['cacheControl'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentBase64: map['contentBase64'] == null ? null : pulumi.Output.create<String>(map['contentBase64'] as String),
      contentDisposition: map['contentDisposition'] == null ? null : pulumi.Output.create<String>(map['contentDisposition'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      contentLanguage: map['contentLanguage'] == null ? null : pulumi.Output.create<String>(map['contentLanguage'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      objectLockLegalHoldStatus: map['objectLockLegalHoldStatus'] == null ? null : pulumi.Output.create<String>(map['objectLockLegalHoldStatus'] as String),
      objectLockMode: map['objectLockMode'] == null ? null : pulumi.Output.create<String>(map['objectLockMode'] as String),
      objectLockRetainUntilDate: map['objectLockRetainUntilDate'] == null ? null : pulumi.Output.create<String>(map['objectLockRetainUntilDate'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverSideEncryption: map['serverSideEncryption'] == null ? null : pulumi.Output.create<String>(map['serverSideEncryption'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<dynamic>(map['source']),
      sourceHash: map['sourceHash'] == null ? null : pulumi.Output.create<String>(map['sourceHash'] as String),
      storageClass: map['storageClass'] == null ? null : pulumi.Output.create<String>(map['storageClass'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      websiteRedirect: map['websiteRedirect'] == null ? null : pulumi.Output.create<String>(map['websiteRedirect'] as String),
    );
  }
}

