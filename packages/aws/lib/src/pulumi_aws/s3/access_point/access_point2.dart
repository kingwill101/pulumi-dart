import 'package:pulumi/pulumi.dart';
import '../access_point_public_access_block_configuration/access_point_public_access_block_configuration.dart';
import '../access_point_vpc_configuration/access_point_vpc_configuration.dart';
import 'access_point_args2.dart';

/// Provides a resource to manage an S3 Access Point.
///
/// > **NOTE on Access Points and Access Point Policies:** This provider provides both a standalone Access Point Policy resource and an Access Point resource with a resource policy defined in-line. You cannot use an Access Point with in-line resource policy in conjunction with an Access Point Policy resource. Doing so will cause a conflict of policies and will overwrite the access point's resource policy.
///
/// > Advanced usage: To use a custom API endpoint for this resource, use the `s3control` endpoint provider configuration), not the `s3` endpoint provider configuration.
///
/// > This resource can be used with s3 directory buckets. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets.html) for more information.
///
/// ## Example Usage
///
/// ### AWS Partition General Purpose Bucket
///
///
///
/// ### S3 on Outposts Bucket
///
///
///
/// ### AWS Partition Directory Bucket
///
///
///
/// ## Import
///
/// Import using the ARN for Access Points associated with an S3 on Outposts Bucket:
///
///
/// **Using `pulumi import` to import.** For example:
///
/// Import using the `account_id` and `name` separated by a colon (`:`) for Access Points associated with an AWS Partition S3 Bucket:
///
/// ```sh
/// $ pulumi import aws:s3/accessPoint:AccessPoint example 123456789012:example
/// ```
///
/// Import using the ARN for Access Points associated with an S3 on Outposts Bucket:
///
/// ```sh
/// $ pulumi import aws:s3/accessPoint:AccessPoint example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-1234567890123456/accesspoint/example
/// ```
class AccessPoint2 extends CustomResource {
  /// AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the AWS provider.
  late final Output<String> accountId;

  /// Alias of the S3 Access Point.
  late final Output<String> alias;

  /// ARN of the S3 Access Point.
  late final Output<String> arn;

  /// Name of an AWS Partition S3 General Purpose Bucket or the ARN of S3 on Outposts Bucket that you want to associate this access point with.
  late final Output<String> bucket;

  /// AWS account ID associated with the S3 bucket associated with this access point.
  late final Output<String> bucketAccountId;

  /// DNS domain name of the S3 Access Point in the format _`name`_-_`account_id`_.s3-accesspoint._region_.amazonaws.com.
  /// Note: S3 access points only support secure access by HTTPS. HTTP isn't supported.
  late final Output<String> domainName;

  /// VPC endpoints for the S3 Access Point.
  late final Output<Map<String, String>> endpoints;

  /// Indicates whether this access point currently has a policy that allows public access.
  late final Output<bool> hasPublicAccessPolicy;

  /// Name you want to assign to this access point. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html?icmpid=docs_amazons3_console#access-points-names) for naming conditions.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Indicates whether this access point allows access from the public Internet. Values are `VPC` (the access point doesn't allow access from the public Internet) and `Internet` (the access point allows access from the public Internet, subject to the access point and bucket access policies).
  late final Output<String> networkOrigin;

  /// Valid JSON document that specifies the policy that you want to apply to this access point. Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.s3control.AccessPointPolicy`. To remove the `policy`, set it to `"{}"` (an empty JSON document).
  late final Output<String> policy;

  /// Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below.
  late final Output<AccessPointPublicAccessBlockConfiguration?>
      publicAccessBlockConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block to restrict access to this access point to requests from the specified Virtual Private Cloud (VPC). Required for S3 on Outposts. Detailed below.
  late final Output<AccessPointVpcConfiguration?> vpcConfiguration;

  AccessPoint2(
    String name, {
    AccessPointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/accessPoint:AccessPoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.alias = registerOutput<String>('alias');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.bucketAccountId = registerOutput<String>('bucketAccountId');
    this.domainName = registerOutput<String>('domainName');
    this.endpoints = registerOutput<Map<String, String>>('endpoints');
    this.hasPublicAccessPolicy = registerOutput<bool>('hasPublicAccessPolicy');
    this.name = registerOutput<String>('name');
    this.networkOrigin = registerOutput<String>('networkOrigin');
    this.policy = registerOutput<String>('policy');
    this.publicAccessBlockConfiguration =
        registerOutput<AccessPointPublicAccessBlockConfiguration?>(
            'publicAccessBlockConfiguration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfiguration =
        registerOutput<AccessPointVpcConfiguration?>('vpcConfiguration');
  }
}
