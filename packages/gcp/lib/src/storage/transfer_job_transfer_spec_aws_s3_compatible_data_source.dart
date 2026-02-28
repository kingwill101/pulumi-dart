// ignore_for_file: unused_element, unnecessary_cast

import 'transfer_job_transfer_spec_aws_s3_compatible_data_source_s3_metadata.dart';

class TransferJobTransferSpecAwsS3CompatibleDataSource {
  /// Name of the bucket.
  final String bucketName;
  /// Endpoint of the storage service.
  final String endpoint;
  /// Specifies the path to transfer objects.
  final String? path;
  /// Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.
  final String? region;
  /// S3 compatible metadata.
  final TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata? s3Metadata;

  /// Creates a new [TransferJobTransferSpecAwsS3CompatibleDataSource].
  /// [bucketName] Name of the bucket.
  /// [endpoint] Endpoint of the storage service.
  /// [path] Specifies the path to transfer objects.
  /// [region] Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.
  /// [s3Metadata] S3 compatible metadata.
  TransferJobTransferSpecAwsS3CompatibleDataSource({
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

  factory TransferJobTransferSpecAwsS3CompatibleDataSource.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecAwsS3CompatibleDataSource(
      bucketName: map['bucketName'] as String,
      endpoint: map['endpoint'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      s3Metadata: map['s3Metadata'] == null ? null : TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata.fromMap((map['s3Metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

