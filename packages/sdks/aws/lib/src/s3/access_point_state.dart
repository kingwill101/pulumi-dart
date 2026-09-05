// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_public_access_block_configuration.dart';
import 'access_point_vpc_configuration.dart';

/// Input properties used for looking up and filtering AccessPoint resources.
class AccessPointState {
  /// AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String?>? accountId;
  /// Alias of the S3 Access Point.
  final pulumi.Input<String?>? alias;
  /// ARN of the S3 Access Point.
  final pulumi.Input<String?>? arn;
  /// Name of an AWS Partition S3 General Purpose Bucket or the ARN of S3 on Outposts Bucket that you want to associate this access point with.
  final pulumi.Input<String?>? bucket;
  /// AWS account ID associated with the S3 bucket associated with this access point.
  final pulumi.Input<String?>? bucketAccountId;
  /// DNS domain name of the S3 Access Point in the format _`name`_-_`accountId`_.s3-accesspoint._region_.amazonaws.com. S3 access points only support secure access by HTTPS. HTTP isn't supported.
  final pulumi.Input<String?>? domainName;
  /// VPC endpoints for the S3 Access Point.
  final pulumi.Input<Map<String, String>?>? endpoints;
  /// Whether this access point currently has a policy that allows public access.
  final pulumi.Input<bool?>? hasPublicAccessPolicy;
  /// Name you want to assign to this access point. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html?icmpid=docs_amazons3_console#access-points-names) for naming conditions.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Whether this access point allows access from the public Internet. Values are `VPC` (the access point doesn't allow access from the public Internet) and `Internet` (the access point allows access from the public Internet, subject to the access point and bucket access policies).
  final pulumi.Input<String?>? networkOrigin;
  /// Valid JSON document that specifies the policy that you want to apply to this access point. Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.s3control.AccessPointPolicy`. To remove the `policy`, set it to `"{}"` (an empty JSON document).
  final pulumi.Input<String?>? policy;
  /// Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below.
  final pulumi.Input<AccessPointPublicAccessBlockConfiguration?>? publicAccessBlockConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the bucket. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Configuration block to restrict access to this access point to requests from the specified VPC. Required for S3 on Outposts. Detailed below.
  final pulumi.Input<AccessPointVpcConfiguration?>? vpcConfiguration;

  /// Creates a new [AccessPointState].
  /// [accountId] AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the AWS provider.
  /// [alias] Alias of the S3 Access Point.
  /// [arn] ARN of the S3 Access Point.
  /// [bucket] Name of an AWS Partition S3 General Purpose Bucket or the ARN of S3 on Outposts Bucket that you want to associate this access point with.
  /// [bucketAccountId] AWS account ID associated with the S3 bucket associated with this access point.
  /// [domainName] DNS domain name of the S3 Access Point in the format _`name`_-_`accountId`_.s3-accesspoint._region_.amazonaws.com. S3 access points only support secure access by HTTPS. HTTP isn't supported.
  /// [endpoints] VPC endpoints for the S3 Access Point.
  /// [hasPublicAccessPolicy] Whether this access point currently has a policy that allows public access.
  /// [name] Name you want to assign to this access point. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html?icmpid=docs_amazons3_console#access-points-names) for naming conditions.
  /// [networkOrigin] Whether this access point allows access from the public Internet. Values are `VPC` (the access point doesn't allow access from the public Internet) and `Internet` (the access point allows access from the public Internet, subject to the access point and bucket access policies).
  /// [policy] Valid JSON document that specifies the policy that you want to apply to this access point. Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.s3control.AccessPointPolicy`. To remove the `policy`, set it to `"{}"` (an empty JSON document).
  /// [publicAccessBlockConfiguration] Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the bucket. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcConfiguration] Configuration block to restrict access to this access point to requests from the specified VPC. Required for S3 on Outposts. Detailed below.
  const AccessPointState({
    this.accountId,
    this.alias,
    this.arn,
    this.bucket,
    this.bucketAccountId,
    this.domainName,
    this.endpoints,
    this.hasPublicAccessPolicy,
    this.name,
    this.networkOrigin,
    this.policy,
    this.publicAccessBlockConfiguration,
    this.region,
    this.tags,
    this.tagsAll,
    this.vpcConfiguration,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketAccountId: (() { final guardedValue = map['bucketAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      hasPublicAccessPolicy: (() { final guardedValue = map['hasPublicAccessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkOrigin: (() { final guardedValue = map['networkOrigin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicAccessBlockConfiguration: (() { final guardedValue = map['publicAccessBlockConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPointPublicAccessBlockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcConfiguration: (() { final guardedValue = map['vpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPointVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
