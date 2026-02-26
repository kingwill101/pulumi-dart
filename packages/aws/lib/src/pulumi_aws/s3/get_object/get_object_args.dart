// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getObject.
class GetObjectArgs {
  /// Name of the bucket to read the object from. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  final Input<String> bucket;

  /// To retrieve the object's checksum, this argument must be `ENABLED`. If you enable <span pulumi-lang-nodejs="`checksumMode`" pulumi-lang-dotnet="`ChecksumMode`" pulumi-lang-go="`checksumMode`" pulumi-lang-python="`checksum_mode`" pulumi-lang-yaml="`checksumMode`" pulumi-lang-java="`checksumMode`">`checksum_mode`</span> and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `ENABLED`
  final Input<String>? checksumMode;

  /// Set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to always download object data to <span pulumi-lang-nodejs="`bodyBase64`" pulumi-lang-dotnet="`BodyBase64`" pulumi-lang-go="`bodyBase64`" pulumi-lang-python="`body_base64`" pulumi-lang-yaml="`bodyBase64`" pulumi-lang-java="`bodyBase64`">`body_base64`</span> attribute. If unset and conditions described above are met, <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> will be available but <span pulumi-lang-nodejs="`bodyBase64`" pulumi-lang-dotnet="`BodyBase64`" pulumi-lang-go="`bodyBase64`" pulumi-lang-python="`body_base64`" pulumi-lang-yaml="`bodyBase64`" pulumi-lang-java="`bodyBase64`">`body_base64`</span> will not be. If set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, the body is not downloaded and neither <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> nor <span pulumi-lang-nodejs="`bodyBase64`" pulumi-lang-dotnet="`BodyBase64`" pulumi-lang-go="`bodyBase64`" pulumi-lang-python="`body_base64`" pulumi-lang-yaml="`bodyBase64`" pulumi-lang-java="`bodyBase64`">`body_base64`</span> is available, which may improve performance.
  final Input<String>? downloadBody;

  /// Full path to the object inside the bucket
  final Input<String> key;
  final Input<String>? range;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the object.
  final Input<Map<String, String>>? tags;

  /// Specific version ID of the object returned (defaults to latest version)
  final Input<String>? versionId;

  GetObjectArgs({
    required this.bucket,
    this.checksumMode,
    this.downloadBody,
    required this.key,
    this.range,
    this.region,
    this.tags,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final checksumModeValue = checksumMode;
    if (checksumModeValue != null) {
      map['checksumMode'] = checksumModeValue;
    }
    final downloadBodyValue = downloadBody;
    if (downloadBodyValue != null) {
      map['downloadBody'] = downloadBodyValue;
    }
    map['key'] = key;
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    return map;
  }

  factory GetObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectArgs(
      bucket: Input.asInput<String>(map['bucket']),
      checksumMode: Input.asOptionalInput<String>(map['checksumMode']),
      downloadBody: Input.asOptionalInput<String>(map['downloadBody']),
      key: Input.asInput<String>(map['key']),
      range: Input.asOptionalInput<String>(map['range']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      versionId: Input.asOptionalInput<String>(map['versionId']),
    );
  }
}
