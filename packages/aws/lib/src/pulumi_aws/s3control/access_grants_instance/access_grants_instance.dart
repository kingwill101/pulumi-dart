import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grants_instance_args.dart';

/// Provides a resource to manage an S3 Access Grants instance, which serves as a logical grouping for access grants.
/// You can have one S3 Access Grants instance per Region in your account.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### AWS IAM Identity Center
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Access Grants instances using the `account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessGrantsInstance:AccessGrantsInstance example 123456789012
/// ```
class AccessGrantsInstance extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the S3 Access Grants instance.
  late final pulumi.Output<String> accessGrantsInstanceArn;

  /// Unique ID of the S3 Access Grants instance.
  late final pulumi.Output<String> accessGrantsInstanceId;

  /// The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> accountId;

  /// The ARN of the AWS IAM Identity Center instance application; a subresource of the original Identity Center instance.
  late final pulumi.Output<String> identityCenterApplicationArn;

  /// The ARN of the AWS IAM Identity Center instance associated with the S3 Access Grants instance.
  late final pulumi.Output<String?> identityCenterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  AccessGrantsInstance(
    String name, {
    AccessGrantsInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrantsInstance:AccessGrantsInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessGrantsInstanceArn =
        registerOutput<String>('accessGrantsInstanceArn');
    this.accessGrantsInstanceId =
        registerOutput<String>('accessGrantsInstanceId');
    this.accountId = registerOutput<String>('accountId');
    this.identityCenterApplicationArn =
        registerOutput<String>('identityCenterApplicationArn');
    this.identityCenterArn = registerOutput<String?>('identityCenterArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
