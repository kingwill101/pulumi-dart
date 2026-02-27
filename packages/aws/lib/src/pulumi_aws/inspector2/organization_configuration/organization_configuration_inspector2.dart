import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_configuration_auto_enable/organization_configuration_auto_enable.dart';
import 'organization_configuration_inspector2_args.dart';

/// Resource for managing an Amazon Inspector Organization Configuration.
///
/// > **NOTE:** In order for this resource to work, the account you use must be an Inspector Delegated Admin Account.
///
/// > **NOTE:** When this resource is deleted, EC2, ECR, Lambda, and Lambda code scans will no longer be automatically enabled for new members of your Amazon Inspector organization.
///
/// ## Example Usage
///
/// ### Basic Usage
class OrganizationConfigurationInspector2 extends pulumi.CustomResource {
  /// Configuration block for auto enabling. See below.
  late final pulumi.Output<OrganizationConfigurationAutoEnable> autoEnable;

  /// Whether your configuration reached the max account limit.
  late final pulumi.Output<bool> maxAccountLimitReached;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  OrganizationConfigurationInspector2(
    String name, {
    OrganizationConfigurationInspector2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/organizationConfiguration:OrganizationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoEnable =
        registerOutput<OrganizationConfigurationAutoEnable>('autoEnable');
    this.maxAccountLimitReached =
        registerOutput<bool>('maxAccountLimitReached');
    this.region = registerOutput<String>('region');
  }
}
