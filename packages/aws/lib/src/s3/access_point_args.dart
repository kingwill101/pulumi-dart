// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_public_access_block_configuration.dart';
import 'access_point_vpc_configuration.dart';

/// {@template pulumi_s3_access_point_access_point_args_doc}
/// The set of arguments for AccessPoint.
/// {@endtemplate}
/// {@macro pulumi_s3_access_point_access_point_args_doc}
class AccessPointArgs {
  /// AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;

  /// Name of an AWS Partition S3 General Purpose Bucket or the ARN of S3 on Outposts Bucket that you want to associate this access point with.
  final pulumi.Input<String> bucket;

  /// AWS account ID associated with the S3 bucket associated with this access point.
  final pulumi.Input<String>? bucketAccountId;

  /// Name you want to assign to this access point. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html?icmpid=docs_amazons3_console#access-points-names) for naming conditions.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Valid JSON document that specifies the policy that you want to apply to this access point. Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.s3control.AccessPointPolicy`. To remove the `policy`, set it to `"{}"` (an empty JSON document).
  final pulumi.Input<String>? policy;

  /// Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below.
  final pulumi.Input<AccessPointPublicAccessBlockConfiguration>?
      publicAccessBlockConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block to restrict access to this access point to requests from the specified Virtual Private Cloud (VPC). Required for S3 on Outposts. Detailed below.
  final pulumi.Input<AccessPointVpcConfiguration>? vpcConfiguration;

  /// Creates a new [AccessPointArgs].
  /// [accountId] AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the AWS provider.
  /// [bucket] Name of an AWS Partition S3 General Purpose Bucket or the ARN of S3 on Outposts Bucket that you want to associate this access point with.
  /// [bucketAccountId] AWS account ID associated with the S3 bucket associated with this access point.
  /// [name] Name you want to assign to this access point. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html?icmpid=docs_amazons3_console#access-points-names) for naming conditions.
  /// [policy] Valid JSON document that specifies the policy that you want to apply to this access point. Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.s3control.AccessPointPolicy`. To remove the `policy`, set it to `"{}"` (an empty JSON document).
  /// [publicAccessBlockConfiguration] Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcConfiguration] Configuration block to restrict access to this access point to requests from the specified Virtual Private Cloud (VPC). Required for S3 on Outposts. Detailed below.
  AccessPointArgs({
    String? accountId,
    required String bucket,
    String? bucketAccountId,
    String? name,
    String? policy,
    AccessPointPublicAccessBlockConfiguration? publicAccessBlockConfiguration,
    String? region,
    Map<String, String>? tags,
    AccessPointVpcConfiguration? vpcConfiguration,
  })  : accountId = pulumi.Input.asOptionalInput<String>(accountId),
        bucket = pulumi.Input.asInput<String>(bucket),
        bucketAccountId = pulumi.Input.asOptionalInput<String>(bucketAccountId),
        name = pulumi.Input.asOptionalInput<String>(name),
        policy = pulumi.Input.asOptionalInput<String>(policy),
        publicAccessBlockConfiguration = pulumi.Input.asOptionalInput<
                AccessPointPublicAccessBlockConfiguration>(
            publicAccessBlockConfiguration),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcConfiguration =
            pulumi.Input.asOptionalInput<AccessPointVpcConfiguration>(
                vpcConfiguration);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['bucket'] = bucket;
    final bucketAccountIdValue = bucketAccountId;
    if (bucketAccountIdValue != null) {
      map['bucketAccountId'] = bucketAccountIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final publicAccessBlockConfigurationValue = publicAccessBlockConfiguration;
    if (publicAccessBlockConfigurationValue != null) {
      map['publicAccessBlockConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  AccessPointPublicAccessBlockConfiguration,
                  Map<String, dynamic>>(
              publicAccessBlockConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcConfigurationValue = vpcConfiguration;
    if (vpcConfigurationValue != null) {
      map['vpcConfiguration'] = pulumi.Input.mapOptionalInputValue<
              AccessPointVpcConfiguration, Map<String, dynamic>>(
          vpcConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory AccessPointArgs.fromMap(Map<String, dynamic> map) {
    return AccessPointArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      bucket: map['bucket'] as String,
      bucketAccountId: map['bucketAccountId'] == null
          ? null
          : map['bucketAccountId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      publicAccessBlockConfiguration:
          map['publicAccessBlockConfiguration'] == null
              ? null
              : AccessPointPublicAccessBlockConfiguration.fromMap(
                  (map['publicAccessBlockConfiguration'] as Map)
                      .cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcConfiguration: map['vpcConfiguration'] == null
          ? null
          : AccessPointVpcConfiguration.fromMap(
              (map['vpcConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
