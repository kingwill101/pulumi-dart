import 'package:pulumi/pulumi.dart' as pulumi;

/// Manages Resource Access Manager (RAM) Resource Sharing with AWS Organizations. If you enable sharing with your organization, you can share resources without using invitations. Refer to the [AWS RAM user guide](https://docs.aws.amazon.com/ram/latest/userguide/getting-started-sharing.html#getting-started-sharing-orgs) for more details.
///
/// > **NOTE:** Use this resource to manage resource sharing within your organization, **not** the `aws.organizations.Organization` resource with `ram.amazonaws.com` configured in `aws_service_access_principals`.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the resource using the current AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:ram/sharingWithOrganization:SharingWithOrganization example 123456789012
/// ```
class SharingWithOrganization extends pulumi.CustomResource {
  SharingWithOrganization(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/sharingWithOrganization:SharingWithOrganization',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        );
}
