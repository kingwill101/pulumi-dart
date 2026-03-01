// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_public_access_block_configuration.dart';
import 'access_point_vpc_configuration.dart';

/// Input properties used for looking up and filtering AccessPoint resources.
class AccessPointState {
  /// AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// Alias of the S3 Access Point.
  final pulumi.Input<String>? alias;
  /// ARN of the S3 Access Point.
  final pulumi.Input<String>? arn;
  /// Name of an AWS Partition S3 General Purpose Bucket or the ARN of S3 on Outposts Bucket that you want to associate this access point with.
  final pulumi.Input<String>? bucket;
  /// AWS account ID associated with the S3 bucket associated with this access point.
  final pulumi.Input<String>? bucketAccountId;
  /// DNS domain name of the S3 Access Point in the format _`name`_-_`account_id`_.s3-accesspoint._region_.amazonaws.com.
  /// Note: S3 access points only support secure access by HTTPS. HTTP isn't supported.
  final pulumi.Input<String>? domainName;
  /// VPC endpoints for the S3 Access Point.
  final pulumi.Input<Map<String, String>>? endpoints;
  /// Indicates whether this access point currently has a policy that allows public access.
  final pulumi.Input<bool>? hasPublicAccessPolicy;
  /// Name you want to assign to this access point. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html?icmpid=docs_amazons3_console#access-points-names) for naming conditions.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Indicates whether this access point allows access from the public Internet. Values are `VPC` (the access point doesn't allow access from the public Internet) and `Internet` (the access point allows access from the public Internet, subject to the access point and bucket access policies).
  final pulumi.Input<String>? networkOrigin;
  /// Valid JSON document that specifies the policy that you want to apply to this access point. Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.s3control.AccessPointPolicy`. To remove the `policy`, set it to `"{}"` (an empty JSON document).
  final pulumi.Input<String>? policy;
  /// Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below.
  final pulumi.Input<AccessPointPublicAccessBlockConfiguration>? publicAccessBlockConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block to restrict access to this access point to requests from the specified Virtual Private Cloud (VPC). Required for S3 on Outposts. Detailed below.
  final pulumi.Input<AccessPointVpcConfiguration>? vpcConfiguration;

  /// Creates a new [AccessPointState].
  /// [accountId] AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the AWS provider.
  /// [alias] Alias of the S3 Access Point.
  /// [arn] ARN of the S3 Access Point.
  /// [bucket] Name of an AWS Partition S3 General Purpose Bucket or the ARN of S3 on Outposts Bucket that you want to associate this access point with.
  /// [bucketAccountId] AWS account ID associated with the S3 bucket associated with this access point.
  /// [domainName] DNS domain name of the S3 Access Point in the format _`name`_-_`account_id`_.s3-accesspoint._region_.amazonaws.com.
  /// [endpoints] VPC endpoints for the S3 Access Point.
  /// [hasPublicAccessPolicy] Indicates whether this access point currently has a policy that allows public access.
  /// [name] Name you want to assign to this access point. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html?icmpid=docs_amazons3_console#access-points-names) for naming conditions.
  /// [networkOrigin] Indicates whether this access point allows access from the public Internet. Values are `VPC` (the access point doesn't allow access from the public Internet) and `Internet` (the access point allows access from the public Internet, subject to the access point and bucket access policies).
  /// [policy] Valid JSON document that specifies the policy that you want to apply to this access point. Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.s3control.AccessPointPolicy`. To remove the `policy`, set it to `"{}"` (an empty JSON document).
  /// [publicAccessBlockConfiguration] Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcConfiguration] Configuration block to restrict access to this access point to requests from the specified Virtual Private Cloud (VPC). Required for S3 on Outposts. Detailed below.
  AccessPointState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? alias,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? bucketAccountId,
    pulumi.Output<String>? domainName,
    pulumi.Output<Map<String, String>>? endpoints,
    pulumi.Output<bool>? hasPublicAccessPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkOrigin,
    pulumi.Output<String>? policy,
    pulumi.Output<AccessPointPublicAccessBlockConfiguration>? publicAccessBlockConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AccessPointVpcConfiguration>? vpcConfiguration,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      alias = pulumi.Input.asOptionalInput<String>(alias),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      bucketAccountId = pulumi.Input.asOptionalInput<String>(bucketAccountId),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      endpoints = pulumi.Input.asOptionalInput<Map<String, String>>(endpoints),
      hasPublicAccessPolicy = pulumi.Input.asOptionalInput<bool>(hasPublicAccessPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkOrigin = pulumi.Input.asOptionalInput<String>(networkOrigin),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      publicAccessBlockConfiguration = pulumi.Input.asOptionalInput<AccessPointPublicAccessBlockConfiguration>(publicAccessBlockConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcConfiguration = pulumi.Input.asOptionalInput<AccessPointVpcConfiguration>(vpcConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alias': ?alias,
      'arn': ?arn,
      'bucket': ?bucket,
      'bucketAccountId': ?bucketAccountId,
      'domainName': ?domainName,
      'endpoints': ?endpoints,
      'hasPublicAccessPolicy': ?hasPublicAccessPolicy,
      'name': ?name,
      'networkOrigin': ?networkOrigin,
      'policy': ?policy,
      'publicAccessBlockConfiguration': ?pulumi.Input.mapOptionalInputValue<AccessPointPublicAccessBlockConfiguration, Map<String, dynamic>>(publicAccessBlockConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<AccessPointVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory AccessPointState.fromMap(Map<String, dynamic> map) {
    return AccessPointState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      bucketAccountId: map['bucketAccountId'] == null ? null : pulumi.Output.create<String>(map['bucketAccountId'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<Map<String, String>>((map['endpoints'] as Map).cast<String, String>()),
      hasPublicAccessPolicy: map['hasPublicAccessPolicy'] == null ? null : pulumi.Output.create<bool>(map['hasPublicAccessPolicy'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkOrigin: map['networkOrigin'] == null ? null : pulumi.Output.create<String>(map['networkOrigin'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      publicAccessBlockConfiguration: map['publicAccessBlockConfiguration'] == null ? null : pulumi.Output.create<AccessPointPublicAccessBlockConfiguration>(AccessPointPublicAccessBlockConfiguration.fromMap((map['publicAccessBlockConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : pulumi.Output.create<AccessPointVpcConfiguration>(AccessPointVpcConfiguration.fromMap((map['vpcConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

