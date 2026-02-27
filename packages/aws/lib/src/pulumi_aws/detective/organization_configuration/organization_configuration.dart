import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_args.dart';

/// Manages the Detective Organization Configuration in the current AWS Region. The AWS account utilizing this resource must have been assigned as a delegated Organization administrator account, e.g., via the `aws.detective.OrganizationAdminAccount` resource. More information about Organizations support in Detective can be found in the [Detective User Guide](https://docs.aws.amazon.com/detective/latest/adminguide/accounts-orgs-transition.html).
///
/// > **NOTE:** This is an advanced Terraform resource. Terraform will automatically assume management of the Detective Organization Configuration without import and perform no actions on removal from the Terraform configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.detective.OrganizationAdminAccount` using the behavior graph ARN. For example:
///
/// ```sh
/// $ pulumi import aws:detective/organizationConfiguration:OrganizationConfiguration example arn:aws:detective:us-east-1:123456789012:graph:00b00fd5aecc0ab60a708659477e9617
/// ```
class OrganizationConfiguration extends pulumi.CustomResource {
  /// When this setting is enabled, all new accounts that are created in, or added to, the organization are added as a member accounts of the organization’s Detective delegated administrator and Detective is enabled in that AWS Region.
  late final pulumi.Output<bool> autoEnable;

  /// ARN of the behavior graph.
  late final pulumi.Output<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  OrganizationConfiguration(
    String name, {
    OrganizationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:detective/organizationConfiguration:OrganizationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoEnable = registerOutput<bool>('autoEnable');
    this.graphArn = registerOutput<String>('graphArn');
    this.region = registerOutput<String>('region');
  }
}
