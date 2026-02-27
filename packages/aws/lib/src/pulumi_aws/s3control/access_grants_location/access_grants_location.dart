import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grants_location_args.dart';

/// Provides a resource to manage an S3 Access Grants location.
/// A location is an S3 resource (bucket or prefix) in a permission grant that the grantee can access.
/// The S3 data must be in the same Region as your S3 Access Grants instance.
/// When you register a location, you must include the IAM role that has permission to manage the S3 location that you are registering.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Access Grants locations using the `account_id` and `access_grants_location_id`, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessGrantsLocation:AccessGrantsLocation example 123456789012,default
/// ```
class AccessGrantsLocation extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the S3 Access Grants location.
  late final pulumi.Output<String> accessGrantsLocationArn;

  /// Unique ID of the S3 Access Grants location.
  late final pulumi.Output<String> accessGrantsLocationId;

  /// The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> accountId;

  /// The ARN of the IAM role that S3 Access Grants should use when fulfilling runtime access
  /// requests to the location.
  late final pulumi.Output<String> iamRoleArn;

  /// The default S3 URI `s3://` or the URI to a custom location, a specific bucket or prefix.
  late final pulumi.Output<String> locationScope;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  AccessGrantsLocation(
    String name, {
    AccessGrantsLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrantsLocation:AccessGrantsLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessGrantsLocationArn =
        registerOutput<String>('accessGrantsLocationArn');
    this.accessGrantsLocationId =
        registerOutput<String>('accessGrantsLocationId');
    this.accountId = registerOutput<String>('accountId');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.locationScope = registerOutput<String>('locationScope');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
