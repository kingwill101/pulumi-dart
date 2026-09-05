// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBucketObject.
class GetBucketObjectResult {
  /// ARN of the object.
  final String? arn;
  /// Object data (see **limitations above** to understand cases in which this field is actually available)
  final String? body;
  final String? bucket;
  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  final bool? bucketKeyEnabled;
  /// Caching behavior along the request/reply chain.
  final String? cacheControl;
  /// Presentational information for the object.
  final String? contentDisposition;
  /// What content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  final String? contentEncoding;
  /// Language the content is in.
  final String? contentLanguage;
  /// Size of the body in bytes.
  final int? contentLength;
  /// Standard MIME type describing the format of the object data.
  final String? contentType;
  /// [ETag](https://en.wikipedia.org/wiki/HTTP_ETag) generated for the object (an MD5 sum of the object content in case it's not encrypted)
  final String? etag;
  /// If the object expiration is configured (see [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
  final String? expiration;
  /// Date and time at which the object is no longer cacheable.
  final String? expires;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? key;
  /// Last modified date of the object in RFC1123 format (e.g., `Mon, 02 Jan 2006 15:04:05 MST`)
  final String? lastModified;
  /// Map of metadata stored with the object in S3. Keys are always returned in lowercase.
  final Map<String, String>? metadata;
  /// Whether this object has an active [legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds). This field is only returned if you have permission to view an object's legal hold status.
  final String? objectLockLegalHoldStatus;
  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) currently in place for this object.
  final String? objectLockMode;
  /// Date and time when this object's object lock will expire.
  final String? objectLockRetainUntilDate;
  final String? range;
  final String? region;
  /// If the object is stored using server-side encryption (KMS or Amazon S3-managed encryption key), this field includes the chosen encryption and algorithm used.
  final String? serverSideEncryption;
  /// If present, specifies the ID of the KMS master encryption key that was used for the object.
  final String? sseKmsKeyId;
  /// [Storage class](http://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) information of the object. Available for all objects except for `Standard` storage class objects.
  final String? storageClass;
  /// Map of tags assigned to the object.
  final Map<String, String>? tags;
  /// Latest version ID of the object returned.
  final String? versionId;
  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
  final String? websiteRedirectLocation;

  /// Creates a new [GetBucketObjectResult].
  /// [arn] ARN of the object.
  /// [body] Object data (see **limitations above** to understand cases in which this field is actually available)
  /// [bucket] Optional.
  /// [bucketKeyEnabled] Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  /// [cacheControl] Caching behavior along the request/reply chain.
  /// [contentDisposition] Presentational information for the object.
  /// [contentEncoding] What content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  /// [contentLanguage] Language the content is in.
  /// [contentLength] Size of the body in bytes.
  /// [contentType] Standard MIME type describing the format of the object data.
  /// [etag] [ETag](https://en.wikipedia.org/wiki/HTTP_ETag) generated for the object (an MD5 sum of the object content in case it's not encrypted)
  /// [expiration] If the object expiration is configured (see [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
  /// [expires] Date and time at which the object is no longer cacheable.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [key] Optional.
  /// [lastModified] Last modified date of the object in RFC1123 format (e.g., `Mon, 02 Jan 2006 15:04:05 MST`)
  /// [metadata] Map of metadata stored with the object in S3. Keys are always returned in lowercase.
  /// [objectLockLegalHoldStatus] Whether this object has an active [legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds). This field is only returned if you have permission to view an object's legal hold status.
  /// [objectLockMode] Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) currently in place for this object.
  /// [objectLockRetainUntilDate] Date and time when this object's object lock will expire.
  /// [range] Optional.
  /// [region] Optional.
  /// [serverSideEncryption] If the object is stored using server-side encryption (KMS or Amazon S3-managed encryption key), this field includes the chosen encryption and algorithm used.
  /// [sseKmsKeyId] If present, specifies the ID of the KMS master encryption key that was used for the object.
  /// [storageClass] [Storage class](http://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) information of the object. Available for all objects except for `Standard` storage class objects.
  /// [tags] Map of tags assigned to the object.
  /// [versionId] Latest version ID of the object returned.
  /// [websiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
  const GetBucketObjectResult({
    this.arn,
    this.body,
    this.bucket,
    this.bucketKeyEnabled,
    this.cacheControl,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentLength,
    this.contentType,
    this.etag,
    this.expiration,
    this.expires,
    this.id,
    this.key,
    this.lastModified,
    this.metadata,
    this.objectLockLegalHoldStatus,
    this.objectLockMode,
    this.objectLockRetainUntilDate,
    this.range,
    this.region,
    this.serverSideEncryption,
    this.sseKmsKeyId,
    this.storageClass,
    this.tags,
    this.versionId,
    this.websiteRedirectLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'body': ?body,
      'bucket': ?bucket,
      'bucketKeyEnabled': ?bucketKeyEnabled,
      'cacheControl': ?cacheControl,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentLength': ?contentLength,
      'contentType': ?contentType,
      'etag': ?etag,
      'expiration': ?expiration,
      'expires': ?expires,
      'id': ?id,
      'key': ?key,
      'lastModified': ?lastModified,
      'metadata': ?metadata,
      'objectLockLegalHoldStatus': ?objectLockLegalHoldStatus,
      'objectLockMode': ?objectLockMode,
      'objectLockRetainUntilDate': ?objectLockRetainUntilDate,
      'range': ?range,
      'region': ?region,
      'serverSideEncryption': ?serverSideEncryption,
      'sseKmsKeyId': ?sseKmsKeyId,
      'storageClass': ?storageClass,
      'tags': ?tags,
      'versionId': ?versionId,
      'websiteRedirectLocation': ?websiteRedirectLocation,
    };
  }

  factory GetBucketObjectResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketKeyEnabled: (() { final guardedValue = map['bucketKeyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentLanguage: (() { final guardedValue = map['contentLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentLength: (() { final guardedValue = map['contentLength']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      objectLockLegalHoldStatus: (() { final guardedValue = map['objectLockLegalHoldStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectLockMode: (() { final guardedValue = map['objectLockMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectLockRetainUntilDate: (() { final guardedValue = map['objectLockRetainUntilDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverSideEncryption: (() { final guardedValue = map['serverSideEncryption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sseKmsKeyId: (() { final guardedValue = map['sseKmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      websiteRedirectLocation: (() { final guardedValue = map['websiteRedirectLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
