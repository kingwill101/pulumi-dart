// ignore_for_file: unused_element, unnecessary_cast


/// Definition of S3Location
class S3Location {
  /// The name of the S3 bucket where the OpenAPI file is stored.
  final String? bucket;
  /// The Amazon S3 ETag (a file checksum) of the OpenAPI file. If you don't specify a value, API Gateway skips ETag validation of your OpenAPI file.
  final String? eTag;
  /// The file name of the OpenAPI file (Amazon S3 object name).
  final String? key;
  /// For versioning-enabled buckets, a specific version of the OpenAPI file.
  final String? version;

  /// Creates a new [S3Location].
  /// [bucket] The name of the S3 bucket where the OpenAPI file is stored.
  /// [eTag] The Amazon S3 ETag (a file checksum) of the OpenAPI file. If you don't specify a value, API Gateway skips ETag validation of your OpenAPI file.
  /// [key] The file name of the OpenAPI file (Amazon S3 object name).
  /// [version] For versioning-enabled buckets, a specific version of the OpenAPI file.
  S3Location({
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

  factory S3Location.fromMap(Map<String, dynamic> map) {
    return S3Location(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

