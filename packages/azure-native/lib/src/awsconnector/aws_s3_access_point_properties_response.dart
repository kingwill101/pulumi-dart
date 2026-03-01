// ignore_for_file: unused_element, unnecessary_cast

import 'public_access_block_configuration_response.dart';
import 'vpc_configuration_response.dart';

/// Definition of awsS3AccessPoint
class AwsS3AccessPointPropertiesResponse {
  /// The alias of this Access Point. This alias can be used for compatibility purposes with other AWS services and third-party applications.
  final String? alias;
  /// The Amazon Resource Name (ARN) of the specified accesspoint. the Amazon Resource Name (ARN) of the specified accesspoint.
  final String? arn;
  /// The name of the bucket that you want to associate this Access Point with.
  final String? bucket;
  /// The AWS account ID associated with the S3 bucket associated with this access point.
  final String? bucketAccountId;
  /// The name you want to assign to this Access Point. If you don't specify a name, AWS CloudFormation generates a unique ID and uses that ID for the access point name.
  final String? name;
  /// Indicates whether this Access Point allows access from the public Internet. If VpcConfiguration is specified for this Access Point, then NetworkOrigin is VPC, and the Access Point doesn't allow access from the public Internet. Otherwise, NetworkOrigin is Internet, and the Access Point allows access from the public Internet, subject to the Access Point and bucket access policies.
  final String? networkOrigin;
  /// The Access Point Policy you want to apply to this access point.
  final dynamic policy;
  /// The PublicAccessBlock configuration that you want to apply to this Access Point. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status 'The Meaning of Public' in the Amazon Simple Storage Service Developer Guide.
  final PublicAccessBlockConfigurationResponse? publicAccessBlockConfiguration;
  /// If you include this field, Amazon S3 restricts access to this Access Point to requests from the specified Virtual Private Cloud (VPC). The Virtual Private Cloud (VPC) configuration for a bucket access point.
  final VpcConfigurationResponse? vpcConfiguration;

  /// Creates a new [AwsS3AccessPointPropertiesResponse].
  /// [alias] The alias of this Access Point. This alias can be used for compatibility purposes with other AWS services and third-party applications.
  /// [arn] The Amazon Resource Name (ARN) of the specified accesspoint. the Amazon Resource Name (ARN) of the specified accesspoint.
  /// [bucket] The name of the bucket that you want to associate this Access Point with.
  /// [bucketAccountId] The AWS account ID associated with the S3 bucket associated with this access point.
  /// [name] The name you want to assign to this Access Point. If you don't specify a name, AWS CloudFormation generates a unique ID and uses that ID for the access point name.
  /// [networkOrigin] Indicates whether this Access Point allows access from the public Internet. If VpcConfiguration is specified for this Access Point, then NetworkOrigin is VPC, and the Access Point doesn't allow access from the public Internet. Otherwise, NetworkOrigin is Internet, and the Access Point allows access from the public Internet, subject to the Access Point and bucket access policies.
  /// [policy] The Access Point Policy you want to apply to this access point.
  /// [publicAccessBlockConfiguration] The PublicAccessBlock configuration that you want to apply to this Access Point. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status 'The Meaning of Public' in the Amazon Simple Storage Service Developer Guide.
  /// [vpcConfiguration] If you include this field, Amazon S3 restricts access to this Access Point to requests from the specified Virtual Private Cloud (VPC). The Virtual Private Cloud (VPC) configuration for a bucket access point.
  AwsS3AccessPointPropertiesResponse({
    this.alias,
    this.arn,
    this.bucket,
    this.bucketAccountId,
    this.name,
    this.networkOrigin,
    this.policy,
    this.publicAccessBlockConfiguration,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'arn': ?arn,
      'bucket': ?bucket,
      'bucketAccountId': ?bucketAccountId,
      'name': ?name,
      'networkOrigin': ?networkOrigin,
      'policy': ?policy,
      'publicAccessBlockConfiguration': ?publicAccessBlockConfiguration == null ? null : publicAccessBlockConfiguration!.toMap(),
      'vpcConfiguration': ?vpcConfiguration == null ? null : vpcConfiguration!.toMap(),
    };
  }

  factory AwsS3AccessPointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsS3AccessPointPropertiesResponse(
      alias: map['alias'] == null ? null : map['alias'] as String,
      arn: map['arn'] == null ? null : map['arn'] as String,
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      bucketAccountId: map['bucketAccountId'] == null ? null : map['bucketAccountId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkOrigin: map['networkOrigin'] == null ? null : map['networkOrigin'] as String,
      policy: map['policy'] == null ? null : map['policy'],
      publicAccessBlockConfiguration: map['publicAccessBlockConfiguration'] == null ? null : PublicAccessBlockConfigurationResponse.fromMap((map['publicAccessBlockConfiguration'] as Map).cast<String, dynamic>()),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : VpcConfigurationResponse.fromMap((map['vpcConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

