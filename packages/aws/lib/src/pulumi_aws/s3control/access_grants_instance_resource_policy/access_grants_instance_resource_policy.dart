import 'package:pulumi/pulumi.dart';
import 'access_grants_instance_resource_policy_args.dart';

/// Provides a resource to manage an S3 Access Grants instance resource policy.
/// Use a resource policy to manage cross-account access to your S3 Access Grants instance.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Access Grants instance resource policies using the `account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessGrantsInstanceResourcePolicy:AccessGrantsInstanceResourcePolicy example 123456789012
/// ```
class AccessGrantsInstanceResourcePolicy extends CustomResource {
  /// The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> accountId;

  /// The policy document.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AccessGrantsInstanceResourcePolicy(
    String name, {
    AccessGrantsInstanceResourcePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrantsInstanceResourcePolicy:AccessGrantsInstanceResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
