// ignore_for_file: unused_element, unnecessary_cast

import 's3_compatible_metadata.dart';

/// An AwsS3CompatibleData resource.
class AwsS3CompatibleData {
  /// Specifies the name of the bucket.
  final String bucketName;
  /// Specifies the endpoint of the storage service.
  final String endpoint;
  /// Specifies the root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final String? path;
  /// Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.
  final String? region;
  /// A S3 compatible metadata.
  final S3CompatibleMetadata? s3Metadata;

  /// Creates a new [AwsS3CompatibleData].
  /// [bucketName] Specifies the name of the bucket.
  /// [endpoint] Specifies the endpoint of the storage service.
  /// [path] Specifies the root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  /// [region] Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.
  /// [s3Metadata] A S3 compatible metadata.
  AwsS3CompatibleData({
    required this.bucketName,
    required this.endpoint,
    this.path,
    this.region,
    this.s3Metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'endpoint': endpoint,
      'path': ?path,
      'region': ?region,
      's3Metadata': ?s3Metadata == null ? null : s3Metadata!.toMap(),
    };
  }

  factory AwsS3CompatibleData.fromMap(Map<String, dynamic> map) {
    return AwsS3CompatibleData(
      bucketName: map['bucketName'] as String,
      endpoint: map['endpoint'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      s3Metadata: map['s3Metadata'] == null ? null : S3CompatibleMetadata.fromMap((map['s3Metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

