// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_point_public_access_block_configuration/access_point_public_access_block_configuration.dart';
import '../access_point_vpc_configuration/access_point_vpc_configuration.dart';

/// The set of arguments for AccessPoint.
class AccessPointArgs2 {
  /// AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the AWS provider.
  final Input<String>? accountId;

  /// Name of an AWS Partition S3 General Purpose Bucket or the ARN of S3 on Outposts Bucket that you want to associate this access point with.
  final Input<String> bucket;

  /// AWS account ID associated with the S3 bucket associated with this access point.
  final Input<String>? bucketAccountId;

  /// Name you want to assign to this access point. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html?icmpid=docs_amazons3_console#access-points-names) for naming conditions.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Valid JSON document that specifies the policy that you want to apply to this access point. Removing <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> from your configuration or setting <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by <span pulumi-lang-nodejs="`aws.s3control.AccessPointPolicy`" pulumi-lang-dotnet="`aws.s3control.AccessPointPolicy`" pulumi-lang-go="`s3control.AccessPointPolicy`" pulumi-lang-python="`s3control.AccessPointPolicy`" pulumi-lang-yaml="`aws.s3control.AccessPointPolicy`" pulumi-lang-java="`aws.s3control.AccessPointPolicy`">`aws.s3control.AccessPointPolicy`</span>. To remove the <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span>, set it to `"{}"` (an empty JSON document).
  final Input<String>? policy;

  /// Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below.
  final Input<AccessPointPublicAccessBlockConfiguration>?
      publicAccessBlockConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the bucket. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block to restrict access to this access point to requests from the specified Virtual Private Cloud (VPC). Required for S3 on Outposts. Detailed below.
  final Input<AccessPointVpcConfiguration>? vpcConfiguration;

  AccessPointArgs2({
    this.accountId,
    required this.bucket,
    this.bucketAccountId,
    this.name,
    this.policy,
    this.publicAccessBlockConfiguration,
    this.region,
    this.tags,
    this.vpcConfiguration,
  });

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
      map['publicAccessBlockConfiguration'] = Input.mapOptionalInputValue<
              AccessPointPublicAccessBlockConfiguration, Map<String, dynamic>>(
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
      map['vpcConfiguration'] = Input.mapOptionalInputValue<
              AccessPointVpcConfiguration, Map<String, dynamic>>(
          vpcConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory AccessPointArgs2.fromMap(Map<String, dynamic> map) {
    return AccessPointArgs2(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      bucket: Input.asInput<String>(map['bucket']),
      bucketAccountId: Input.asOptionalInput<String>(map['bucketAccountId']),
      name: Input.asOptionalInput<String>(map['name']),
      policy: Input.asOptionalInput<String>(map['policy']),
      publicAccessBlockConfiguration:
          Input.asOptionalInput<AccessPointPublicAccessBlockConfiguration>(
              map['publicAccessBlockConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfiguration: Input.asOptionalInput<AccessPointVpcConfiguration>(
          map['vpcConfiguration']),
    );
  }
}
