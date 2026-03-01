// ignore_for_file: unused_element, unnecessary_cast

import 'aws_s3_bucket_policy_properties.dart';

/// Definition of S3BucketPolicy
class S3BucketPolicyProperties {
  /// Amazon Resource Name (ARN)
  final String? arn;
  /// AWS Account ID
  final String? awsAccountId;
  /// AWS Properties
  final AwsS3BucketPolicyProperties? awsProperties;
  /// AWS Region
  final String? awsRegion;
  /// AWS Source Schema
  final String? awsSourceSchema;
  /// AWS Tags
  final Map<String, String>? awsTags;
  /// Public Cloud Connectors Resource ID
  final String? publicCloudConnectorsResourceId;
  /// Public Cloud Resource Name
  final String? publicCloudResourceName;

  /// Creates a new [S3BucketPolicyProperties].
  /// [arn] Amazon Resource Name (ARN)
  /// [awsAccountId] AWS Account ID
  /// [awsProperties] AWS Properties
  /// [awsRegion] AWS Region
  /// [awsSourceSchema] AWS Source Schema
  /// [awsTags] AWS Tags
  /// [publicCloudConnectorsResourceId] Public Cloud Connectors Resource ID
  /// [publicCloudResourceName] Public Cloud Resource Name
  S3BucketPolicyProperties({
    this.arn,
    this.awsAccountId,
    this.awsProperties,
    this.awsRegion,
    this.awsSourceSchema,
    this.awsTags,
    this.publicCloudConnectorsResourceId,
    this.publicCloudResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'awsProperties': ?awsProperties == null ? null : awsProperties!.toMap(),
      'awsRegion': ?awsRegion,
      'awsSourceSchema': ?awsSourceSchema,
      'awsTags': ?awsTags,
      'publicCloudConnectorsResourceId': ?publicCloudConnectorsResourceId,
      'publicCloudResourceName': ?publicCloudResourceName,
    };
  }

  factory S3BucketPolicyProperties.fromMap(Map<String, dynamic> map) {
    return S3BucketPolicyProperties(
      arn: map['arn'] == null ? null : map['arn'] as String,
      awsAccountId: map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      awsProperties: map['awsProperties'] == null ? null : AwsS3BucketPolicyProperties.fromMap((map['awsProperties'] as Map).cast<String, dynamic>()),
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      awsSourceSchema: map['awsSourceSchema'] == null ? null : map['awsSourceSchema'] as String,
      awsTags: map['awsTags'] == null ? null : (map['awsTags'] as Map).cast<String, String>(),
      publicCloudConnectorsResourceId: map['publicCloudConnectorsResourceId'] == null ? null : map['publicCloudConnectorsResourceId'] as String,
      publicCloudResourceName: map['publicCloudResourceName'] == null ? null : map['publicCloudResourceName'] as String,
    );
  }
}

