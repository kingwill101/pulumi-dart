import 'package:pulumi/pulumi.dart' as pulumi;
import '../permissions_boundary_attachment_permissions_boundary/permissions_boundary_attachment_permissions_boundary.dart';
import 'permissions_boundary_attachment_args.dart';

/// Attaches a permissions boundary policy to a Single Sign-On (SSO) Permission Set resource.
///
/// > **NOTE:** A permission set can have at most one permissions boundary attached; using more than one `aws.ssoadmin.PermissionsBoundaryAttachment` references the same permission set will show a permanent difference.
///
/// ## Example Usage
///
/// ### Attaching a customer-managed policy
///
///
///
/// ### Attaching an AWS-managed policy
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Admin Permissions Boundary Attachments using the `permission_set_arn` and `instance_arn`, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/permissionsBoundaryAttachment:PermissionsBoundaryAttachment example arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class PermissionsBoundaryAttachment extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final pulumi.Output<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final pulumi.Output<String> permissionSetArn;

  /// The permissions boundary policy. See below.
  late final pulumi.Output<PermissionsBoundaryAttachmentPermissionsBoundary>
      permissionsBoundary;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  PermissionsBoundaryAttachment(
    String name, {
    PermissionsBoundaryAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/permissionsBoundaryAttachment:PermissionsBoundaryAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceArn = registerOutput<String>('instanceArn');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.permissionsBoundary =
        registerOutput<PermissionsBoundaryAttachmentPermissionsBoundary>(
            'permissionsBoundary');
    this.region = registerOutput<String>('region');
  }
}
