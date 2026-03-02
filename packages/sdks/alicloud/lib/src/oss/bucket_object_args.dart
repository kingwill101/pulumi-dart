// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_object_bucket_object_args_doc}
/// The set of arguments for BucketObject.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_object_bucket_object_args_doc}
class BucketObjectArgs {
  /// The [canned ACL](https://www.alibabacloud.com/help/doc-detail/52284.htm) to apply. Defaults to "private".
  final pulumi.Input<String>? acl;
  /// The name of the bucket to put the file in.
  final pulumi.Input<String> bucket;
  /// Specifies caching behavior along the request/reply chain. Read [RFC2616 Cache-Control](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String>? cacheControl;
  /// The literal content being uploaded to the bucket.
  final pulumi.Input<String>? content;
  /// Specifies presentational information for the object. Read [RFC2616 Content-Disposition](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String>? contentDisposition;
  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [RFC2616 Content-Encoding](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String>? contentEncoding;
  /// The MD5 value of the content. Read [MD5](https://www.alibabacloud.com/help/doc-detail/31978.htm) for computing method.
  final pulumi.Input<String>? contentMd5;
  /// A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  final pulumi.Input<String>? contentType;
  /// Specifies expire date for the the request/response. Read [RFC2616 Expires](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String>? expires;
  /// The name of the object once it is in the bucket.
  final pulumi.Input<String> key;
  /// Specifies the primary key managed by KMS. This parameter is valid when the value of `server_side_encryption` is set to KMS.
  ///
  /// Either `source` or `content` must be provided to specify the bucket content.
  /// These two arguments are mutually-exclusive.
  final pulumi.Input<String>? kmsKeyId;
  /// Specifies server-side encryption of the object in OSS. Valid values are `AES256`, `KMS`. Default value is `AES256`.
  final pulumi.Input<String>? serverSideEncryption;
  /// The path to the source file being uploaded to the bucket.
  final pulumi.Input<String>? source;

  /// Creates a new [BucketObjectArgs].
  /// [acl] The [canned ACL](https://www.alibabacloud.com/help/doc-detail/52284.htm) to apply. Defaults to "private".
  /// [bucket] The name of the bucket to put the file in.
  /// [cacheControl] Specifies caching behavior along the request/reply chain. Read [RFC2616 Cache-Control](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [content] The literal content being uploaded to the bucket.
  /// [contentDisposition] Specifies presentational information for the object. Read [RFC2616 Content-Disposition](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [contentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [RFC2616 Content-Encoding](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [contentMd5] The MD5 value of the content. Read [MD5](https://www.alibabacloud.com/help/doc-detail/31978.htm) for computing method.
  /// [contentType] A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  /// [expires] Specifies expire date for the the request/response. Read [RFC2616 Expires](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [key] The name of the object once it is in the bucket.
  /// [kmsKeyId] Specifies the primary key managed by KMS. This parameter is valid when the value of `server_side_encryption` is set to KMS.
  /// [serverSideEncryption] Specifies server-side encryption of the object in OSS. Valid values are `AES256`, `KMS`. Default value is `AES256`.
  /// [source] The path to the source file being uploaded to the bucket.
  BucketObjectArgs({
    this.acl,
    required this.bucket,
    this.cacheControl,
    this.content,
    this.contentDisposition,
    this.contentEncoding,
    this.contentMd5,
    this.contentType,
    this.expires,
    required this.key,
    this.kmsKeyId,
    this.serverSideEncryption,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'bucket': bucket,
      'cacheControl': ?cacheControl,
      'content': ?content,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'expires': ?expires,
      'key': key,
      'kmsKeyId': ?kmsKeyId,
      'serverSideEncryption': ?serverSideEncryption,
      'source': ?source,
    };
  }

  factory BucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return BucketObjectArgs(
      acl: map['acl'] == null ? null : (map['acl']! as String).input(),
      bucket: (map['bucket'] as String).input(),
      cacheControl: map['cacheControl'] == null ? null : (map['cacheControl']! as String).input(),
      content: map['content'] == null ? null : (map['content']! as String).input(),
      contentDisposition: map['contentDisposition'] == null ? null : (map['contentDisposition']! as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding']! as String).input(),
      contentMd5: map['contentMd5'] == null ? null : (map['contentMd5']! as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      expires: map['expires'] == null ? null : (map['expires']! as String).input(),
      key: (map['key'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId']! as String).input(),
      serverSideEncryption: map['serverSideEncryption'] == null ? null : (map['serverSideEncryption']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

