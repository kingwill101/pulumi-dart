import 'package:pulumi/pulumi.dart' as pulumi;
import '../directory_bucket_access_point_scope_scope/directory_bucket_access_point_scope_scope.dart';
import 'directory_bucket_access_point_scope_args.dart';

/// Provides a resource to manage the access point scope for a directory bucket.
///
/// With access points for directory buckets, you can use the access point scope to restrict access to specific prefixes, API actions, or a combination of both. You can specify any amount of prefixes, but the total length of characters of all prefixes must be less than 256 bytes. For more information, see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets-manage-scope.html).
///
/// > For all the services in AWS Local Zones, including Amazon S3, your accountID must be enabled before you can create or access any resource in the Local Zone. You can use the `DescribeAvailabilityZones` API operation to confirm your accountID access to a Local Zone. For more information, see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/opt-in-directory-bucket-lz.html)
///
/// > Terraform provides two ways to manage access point scopes. You can use a standalone resource `aws_s3control_directory_access_point_scope` or, an in-line scope with the  `aws_s3_directory_access_point` resource. You cannot use a standalone resource at the same time as in-line, which will cause an overwrite of each other. You must use one or the other.
///
/// ## Example Usage
///
/// ### S3 Access Point Scope for a directory bucket in an AWS Local Zone
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Access Point Scope using access point name and AWS account ID separated by a colon (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/directoryBucketAccessPointScope:DirectoryBucketAccessPointScope example example--zoneid--xa-s3,123456789012
/// ```
class DirectoryBucketAccessPointScope extends pulumi.CustomResource {
  /// The AWS account ID that owns the specified access point.
  late final pulumi.Output<String> accountId;

  /// The name of the access point that you want to apply the scope to.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// . Scope is used to restrict access to specific prefixes, API operations, or a combination of both. To remove the `scope`, set it to `{permissions=[] prefixes=[]}`. The default scope is `{permissions=[] prefixes=[]}`.
  late final pulumi.Output<DirectoryBucketAccessPointScopeScope> scope;

  DirectoryBucketAccessPointScope(
    String name, {
    DirectoryBucketAccessPointScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/directoryBucketAccessPointScope:DirectoryBucketAccessPointScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<DirectoryBucketAccessPointScopeScope>('scope');
  }
}
