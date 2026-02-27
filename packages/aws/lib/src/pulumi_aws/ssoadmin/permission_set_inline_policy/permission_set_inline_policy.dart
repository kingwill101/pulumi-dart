import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_set_inline_policy_args.dart';

/// Provides an IAM inline policy for a Single Sign-On (SSO) Permission Set resource
///
/// > **NOTE:** AWS Single Sign-On (SSO) only supports one IAM inline policy per `aws.ssoadmin.PermissionSet` resource.
/// Creating or updating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// > **NOTE:** We suggest using `jsonencode()` or `aws.iam.getPolicyDocument` when assigning a value to `inline_policy`. They seamlessly translate Terraform language into JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Permission Set Inline Policies using the `permission_set_arn` and `instance_arn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/permissionSetInlinePolicy:PermissionSetInlinePolicy example arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class PermissionSetInlinePolicy extends pulumi.CustomResource {
  /// The IAM inline policy to attach to a Permission Set.
  late final pulumi.Output<String> inlinePolicy;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final pulumi.Output<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final pulumi.Output<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  PermissionSetInlinePolicy(
    String name, {
    PermissionSetInlinePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/permissionSetInlinePolicy:PermissionSetInlinePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.inlinePolicy = registerOutput<String>('inlinePolicy');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.region = registerOutput<String>('region');
  }
}
