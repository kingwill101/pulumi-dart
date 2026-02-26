// ignore_for_file: unused_element, unnecessary_cast

import 's3_compatible_metadata_response.dart';

/// An AwsS3CompatibleData resource.
class AwsS3CompatibleDataResponse {
  /// Specifies the name of the bucket.
  final String bucketName;

  /// Specifies the endpoint of the storage service.
  final String endpoint;

  /// Specifies the root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final String path;

  /// Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.
  final String region;

  /// A S3 compatible metadata.
  final S3CompatibleMetadataResponse s3Metadata;

  AwsS3CompatibleDataResponse({
    required this.bucketName,
    required this.endpoint,
    required this.path,
    required this.region,
    required this.s3Metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['endpoint'] = endpoint;
    map['path'] = path;
    map['region'] = region;
    map['s3Metadata'] = s3Metadata.toMap();
    return map;
  }

  factory AwsS3CompatibleDataResponse.fromMap(Map<String, dynamic> map) {
    return AwsS3CompatibleDataResponse(
      bucketName: map['bucketName'] as String,
      endpoint: map['endpoint'] as String,
      path: map['path'] as String,
      region: map['region'] as String,
      s3Metadata: S3CompatibleMetadataResponse.fromMap(
          (map['s3Metadata'] as Map).cast<String, dynamic>()),
    );
  }
}
