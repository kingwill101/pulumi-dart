// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BucketObject.
class BucketObjectArgs {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Defaults to `private`.
  final Input<String>? acl;

  /// Name of the bucket to put the file in. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified.
  final Input<String> bucket;

  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  final Input<bool>? bucketKeyEnabled;

  /// Caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  final Input<String>? cacheControl;

  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  final Input<String>? content;

  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  final Input<String>? contentBase64;

  /// Presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  final Input<String>? contentDisposition;

  /// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  final Input<String>? contentEncoding;

  /// Language the content is in e.g., en-US or en-GB.
  final Input<String>? contentLanguage;

  /// Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input.
  final Input<String>? contentType;

  /// Triggers updates when the value changes. This attribute is not compatible with KMS encryption, `kms_key_id` or `server_side_encryption = "aws:kms"` (see `source_hash` instead).
  final Input<String>? etag;

  /// Whether to allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  final Input<bool>? forceDestroy;

  /// Name of the object once it is in the bucket.
  ///
  /// The following arguments are optional:
  final Input<String>? key;

  /// ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the `aws.kms.Key` resource, use the `arn` attribute. If referencing the `aws.kms.Alias` data source or resource, use the `target_key_arn` attribute. The provider will only perform drift detection if a configuration value is provided.
  final Input<String>? kmsKeyId;

  /// Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  final Input<Map<String, String>>? metadata;

  /// [Legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
  final Input<String>? objectLockLegalHoldStatus;

  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  final Input<String>? objectLockMode;

  /// Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  final Input<String>? objectLockRetainUntilDate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Server-side encryption of the object in S3. Valid values are "`AES256`" and "`aws:kms`".
  final Input<String>? serverSideEncryption;

  /// Path to a file that will be read and uploaded as raw bytes for the object content.
  final Input<dynamic>? source;

  /// Triggers updates like `etag` but useful to address `etag` encryption limitations.
  final Input<String>? sourceHash;

  /// [Storage Class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html#AmazonS3-PutObject-request-header-StorageClass) for the object. Defaults to "`STANDARD`".
  final Input<String>? storageClass;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  ///
  /// If no content is provided through `source`, `content` or `content_base64`, then the object will be empty.
  ///
  /// > **Note:** If you specify `content_encoding` you are responsible for encoding the body appropriately. `source`, `content`, and `content_base64` all expect already encoded/compressed bytes.
  final Input<String>? websiteRedirect;

  BucketObjectArgs({
    this.acl,
    required this.bucket,
    this.bucketKeyEnabled,
    this.cacheControl,
    this.content,
    this.contentBase64,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.etag,
    this.forceDestroy,
    this.key,
    this.kmsKeyId,
    this.metadata,
    this.objectLockLegalHoldStatus,
    this.objectLockMode,
    this.objectLockRetainUntilDate,
    this.region,
    this.serverSideEncryption,
    this.source,
    this.sourceHash,
    this.storageClass,
    this.tags,
    this.websiteRedirect,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aclValue = acl;
    if (aclValue != null) {
      map['acl'] = aclValue;
    }
    map['bucket'] = bucket;
    final bucketKeyEnabledValue = bucketKeyEnabled;
    if (bucketKeyEnabledValue != null) {
      map['bucketKeyEnabled'] = bucketKeyEnabledValue;
    }
    final cacheControlValue = cacheControl;
    if (cacheControlValue != null) {
      map['cacheControl'] = cacheControlValue;
    }
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final contentBase64Value = contentBase64;
    if (contentBase64Value != null) {
      map['contentBase64'] = contentBase64Value;
    }
    final contentDispositionValue = contentDisposition;
    if (contentDispositionValue != null) {
      map['contentDisposition'] = contentDispositionValue;
    }
    final contentEncodingValue = contentEncoding;
    if (contentEncodingValue != null) {
      map['contentEncoding'] = contentEncodingValue;
    }
    final contentLanguageValue = contentLanguage;
    if (contentLanguageValue != null) {
      map['contentLanguage'] = contentLanguageValue;
    }
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final objectLockLegalHoldStatusValue = objectLockLegalHoldStatus;
    if (objectLockLegalHoldStatusValue != null) {
      map['objectLockLegalHoldStatus'] = objectLockLegalHoldStatusValue;
    }
    final objectLockModeValue = objectLockMode;
    if (objectLockModeValue != null) {
      map['objectLockMode'] = objectLockModeValue;
    }
    final objectLockRetainUntilDateValue = objectLockRetainUntilDate;
    if (objectLockRetainUntilDateValue != null) {
      map['objectLockRetainUntilDate'] = objectLockRetainUntilDateValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serverSideEncryptionValue = serverSideEncryption;
    if (serverSideEncryptionValue != null) {
      map['serverSideEncryption'] = serverSideEncryptionValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    final sourceHashValue = sourceHash;
    if (sourceHashValue != null) {
      map['sourceHash'] = sourceHashValue;
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final websiteRedirectValue = websiteRedirect;
    if (websiteRedirectValue != null) {
      map['websiteRedirect'] = websiteRedirectValue;
    }
    return map;
  }

  factory BucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return BucketObjectArgs(
      acl: Input.asOptionalInput<String>(map['acl']),
      bucket: Input.asInput<String>(map['bucket']),
      bucketKeyEnabled: Input.asOptionalInput<bool>(map['bucketKeyEnabled']),
      cacheControl: Input.asOptionalInput<String>(map['cacheControl']),
      content: Input.asOptionalInput<String>(map['content']),
      contentBase64: Input.asOptionalInput<String>(map['contentBase64']),
      contentDisposition:
          Input.asOptionalInput<String>(map['contentDisposition']),
      contentEncoding: Input.asOptionalInput<String>(map['contentEncoding']),
      contentLanguage: Input.asOptionalInput<String>(map['contentLanguage']),
      contentType: Input.asOptionalInput<String>(map['contentType']),
      etag: Input.asOptionalInput<String>(map['etag']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      key: Input.asOptionalInput<String>(map['key']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      objectLockLegalHoldStatus:
          Input.asOptionalInput<String>(map['objectLockLegalHoldStatus']),
      objectLockMode: Input.asOptionalInput<String>(map['objectLockMode']),
      objectLockRetainUntilDate:
          Input.asOptionalInput<String>(map['objectLockRetainUntilDate']),
      region: Input.asOptionalInput<String>(map['region']),
      serverSideEncryption:
          Input.asOptionalInput<String>(map['serverSideEncryption']),
      source: Input.asOptionalInput<dynamic>(map['source']),
      sourceHash: Input.asOptionalInput<String>(map['sourceHash']),
      storageClass: Input.asOptionalInput<String>(map['storageClass']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      websiteRedirect: Input.asOptionalInput<String>(map['websiteRedirect']),
    );
  }
}
