// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of S3Location
class S3LocationResponse {
  /// The name of the S3 bucket where the OpenAPI file is stored.
  final pulumi.Input<String>? bucket;
  /// The Amazon S3 ETag (a file checksum) of the OpenAPI file. If you don't specify a value, API Gateway skips ETag validation of your OpenAPI file.
  final pulumi.Input<String>? eTag;
  /// The file name of the OpenAPI file (Amazon S3 object name).
  final pulumi.Input<String>? key;
  /// For versioning-enabled buckets, a specific version of the OpenAPI file.
  final pulumi.Input<String>? version;

  /// Creates a new [S3LocationResponse].
  /// [bucket] The name of the S3 bucket where the OpenAPI file is stored.
  /// [eTag] The Amazon S3 ETag (a file checksum) of the OpenAPI file. If you don't specify a value, API Gateway skips ETag validation of your OpenAPI file.
  /// [key] The file name of the OpenAPI file (Amazon S3 object name).
  /// [version] For versioning-enabled buckets, a specific version of the OpenAPI file.
  const S3LocationResponse({
    this.bucket,
    this.eTag,
    this.key,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'eTag': ?eTag,
      'key': ?key,
      'version': ?version,
    };
  }

  factory S3LocationResponse.fromMap(Map<String, dynamic> map) {
    return S3LocationResponse(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
