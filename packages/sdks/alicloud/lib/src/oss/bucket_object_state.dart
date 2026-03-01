// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketObject resources.
class BucketObjectState {
  /// The [canned ACL](https://www.alibabacloud.com/help/doc-detail/52284.htm) to apply. Defaults to "private".
  final pulumi.Input<String>? acl;
  /// The name of the bucket to put the file in.
  final pulumi.Input<String>? bucket;
  /// Specifies caching behavior along the request/reply chain. Read [RFC2616 Cache-Control](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String>? cacheControl;
  /// The literal content being uploaded to the bucket.
  final pulumi.Input<String>? content;
  /// Specifies presentational information for the object. Read [RFC2616 Content-Disposition](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String>? contentDisposition;
  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [RFC2616 Content-Encoding](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String>? contentEncoding;
  /// the content length of request.
  final pulumi.Input<String>? contentLength;
  /// The MD5 value of the content. Read [MD5](https://www.alibabacloud.com/help/doc-detail/31978.htm) for computing method.
  final pulumi.Input<String>? contentMd5;
  /// A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  final pulumi.Input<String>? contentType;
  /// the ETag generated for the object (an MD5 sum of the object content).
  final pulumi.Input<String>? etag;
  /// Specifies expire date for the the request/response. Read [RFC2616 Expires](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String>? expires;
  /// The name of the object once it is in the bucket.
  final pulumi.Input<String>? key;
  /// Specifies the primary key managed by KMS. This parameter is valid when the value of `server_side_encryption` is set to KMS.
  ///
  /// Either `source` or `content` must be provided to specify the bucket content.
  /// These two arguments are mutually-exclusive.
  final pulumi.Input<String>? kmsKeyId;
  /// Specifies server-side encryption of the object in OSS. Valid values are `AES256`, `KMS`. Default value is `AES256`.
  final pulumi.Input<String>? serverSideEncryption;
  /// The path to the source file being uploaded to the bucket.
  final pulumi.Input<String>? source;
  /// A unique version ID value for the object, if bucket versioning is enabled.
  final pulumi.Input<String>? versionId;

  /// Creates a new [BucketObjectState].
  /// [acl] The [canned ACL](https://www.alibabacloud.com/help/doc-detail/52284.htm) to apply. Defaults to "private".
  /// [bucket] The name of the bucket to put the file in.
  /// [cacheControl] Specifies caching behavior along the request/reply chain. Read [RFC2616 Cache-Control](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [content] The literal content being uploaded to the bucket.
  /// [contentDisposition] Specifies presentational information for the object. Read [RFC2616 Content-Disposition](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [contentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [RFC2616 Content-Encoding](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [contentLength] the content length of request.
  /// [contentMd5] The MD5 value of the content. Read [MD5](https://www.alibabacloud.com/help/doc-detail/31978.htm) for computing method.
  /// [contentType] A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  /// [etag] the ETag generated for the object (an MD5 sum of the object content).
  /// [expires] Specifies expire date for the the request/response. Read [RFC2616 Expires](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [key] The name of the object once it is in the bucket.
  /// [kmsKeyId] Specifies the primary key managed by KMS. This parameter is valid when the value of `server_side_encryption` is set to KMS.
  /// [serverSideEncryption] Specifies server-side encryption of the object in OSS. Valid values are `AES256`, `KMS`. Default value is `AES256`.
  /// [source] The path to the source file being uploaded to the bucket.
  /// [versionId] A unique version ID value for the object, if bucket versioning is enabled.
  BucketObjectState({
    pulumi.Output<String>? acl,
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? cacheControl,
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentDisposition,
    pulumi.Output<String>? contentEncoding,
    pulumi.Output<String>? contentLength,
    pulumi.Output<String>? contentMd5,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? expires,
    pulumi.Output<String>? key,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? serverSideEncryption,
    pulumi.Output<String>? source,
    pulumi.Output<String>? versionId,
  }) :
      acl = pulumi.Input.asOptionalInput<String>(acl),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      cacheControl = pulumi.Input.asOptionalInput<String>(cacheControl),
      content = pulumi.Input.asOptionalInput<String>(content),
      contentDisposition = pulumi.Input.asOptionalInput<String>(contentDisposition),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      contentLength = pulumi.Input.asOptionalInput<String>(contentLength),
      contentMd5 = pulumi.Input.asOptionalInput<String>(contentMd5),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      expires = pulumi.Input.asOptionalInput<String>(expires),
      key = pulumi.Input.asOptionalInput<String>(key),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      serverSideEncryption = pulumi.Input.asOptionalInput<String>(serverSideEncryption),
      source = pulumi.Input.asOptionalInput<String>(source),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'bucket': ?bucket,
      'cacheControl': ?cacheControl,
      'content': ?content,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLength': ?contentLength,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'etag': ?etag,
      'expires': ?expires,
      'key': ?key,
      'kmsKeyId': ?kmsKeyId,
      'serverSideEncryption': ?serverSideEncryption,
      'source': ?source,
      'versionId': ?versionId,
    };
  }

  factory BucketObjectState.fromMap(Map<String, dynamic> map) {
    return BucketObjectState(
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      cacheControl: map['cacheControl'] == null ? null : pulumi.Output.create<String>(map['cacheControl'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentDisposition: map['contentDisposition'] == null ? null : pulumi.Output.create<String>(map['contentDisposition'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      contentLength: map['contentLength'] == null ? null : pulumi.Output.create<String>(map['contentLength'] as String),
      contentMd5: map['contentMd5'] == null ? null : pulumi.Output.create<String>(map['contentMd5'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      expires: map['expires'] == null ? null : pulumi.Output.create<String>(map['expires'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      serverSideEncryption: map['serverSideEncryption'] == null ? null : pulumi.Output.create<String>(map['serverSideEncryption'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

