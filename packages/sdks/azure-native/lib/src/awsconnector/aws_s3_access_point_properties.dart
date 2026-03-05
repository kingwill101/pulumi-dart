// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_access_block_configuration.dart';
import 'vpc_configuration.dart';

/// Definition of awsS3AccessPoint
class AwsS3AccessPointProperties {
  /// The alias of this Access Point. This alias can be used for compatibility purposes with other AWS services and third-party applications.
  final pulumi.Input<String>? alias;
  /// The Amazon Resource Name (ARN) of the specified accesspoint. the Amazon Resource Name (ARN) of the specified accesspoint.
  final pulumi.Input<String>? arn;
  /// The name of the bucket that you want to associate this Access Point with.
  final pulumi.Input<String>? bucket;
  /// The AWS account ID associated with the S3 bucket associated with this access point.
  final pulumi.Input<String>? bucketAccountId;
  /// The name you want to assign to this Access Point. If you don't specify a name, AWS CloudFormation generates a unique ID and uses that ID for the access point name.
  final pulumi.Input<String>? name;
  /// Indicates whether this Access Point allows access from the public Internet. If VpcConfiguration is specified for this Access Point, then NetworkOrigin is VPC, and the Access Point doesn't allow access from the public Internet. Otherwise, NetworkOrigin is Internet, and the Access Point allows access from the public Internet, subject to the Access Point and bucket access policies.
  final pulumi.Input<String>? networkOrigin;
  /// The Access Point Policy you want to apply to this access point.
  final pulumi.Input<dynamic>? policy;
  /// The PublicAccessBlock configuration that you want to apply to this Access Point. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status 'The Meaning of Public' in the Amazon Simple Storage Service Developer Guide.
  final pulumi.Input<PublicAccessBlockConfiguration>? publicAccessBlockConfiguration;
  /// If you include this field, Amazon S3 restricts access to this Access Point to requests from the specified Virtual Private Cloud (VPC). The Virtual Private Cloud (VPC) configuration for a bucket access point.
  final pulumi.Input<VpcConfiguration>? vpcConfiguration;

  /// Creates a new [AwsS3AccessPointProperties].
  /// [alias] The alias of this Access Point. This alias can be used for compatibility purposes with other AWS services and third-party applications.
  /// [arn] The Amazon Resource Name (ARN) of the specified accesspoint. the Amazon Resource Name (ARN) of the specified accesspoint.
  /// [bucket] The name of the bucket that you want to associate this Access Point with.
  /// [bucketAccountId] The AWS account ID associated with the S3 bucket associated with this access point.
  /// [name] The name you want to assign to this Access Point. If you don't specify a name, AWS CloudFormation generates a unique ID and uses that ID for the access point name.
  /// [networkOrigin] Indicates whether this Access Point allows access from the public Internet. If VpcConfiguration is specified for this Access Point, then NetworkOrigin is VPC, and the Access Point doesn't allow access from the public Internet. Otherwise, NetworkOrigin is Internet, and the Access Point allows access from the public Internet, subject to the Access Point and bucket access policies.
  /// [policy] The Access Point Policy you want to apply to this access point.
  /// [publicAccessBlockConfiguration] The PublicAccessBlock configuration that you want to apply to this Access Point. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status 'The Meaning of Public' in the Amazon Simple Storage Service Developer Guide.
  /// [vpcConfiguration] If you include this field, Amazon S3 restricts access to this Access Point to requests from the specified Virtual Private Cloud (VPC). The Virtual Private Cloud (VPC) configuration for a bucket access point.
  AwsS3AccessPointProperties({
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
      'publicAccessBlockConfiguration': ?pulumi.Input.mapOptionalInputValue<PublicAccessBlockConfiguration, Map<String, dynamic>>(publicAccessBlockConfiguration, (value) => value.toMap()),
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<VpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory AwsS3AccessPointProperties.fromMap(Map<String, dynamic> map) {
    return AwsS3AccessPointProperties(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketAccountId: (() { final guardedValue = map['bucketAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkOrigin: (() { final guardedValue = map['networkOrigin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicAccessBlockConfiguration: (() { final guardedValue = map['publicAccessBlockConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicAccessBlockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConfiguration: (() { final guardedValue = map['vpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

