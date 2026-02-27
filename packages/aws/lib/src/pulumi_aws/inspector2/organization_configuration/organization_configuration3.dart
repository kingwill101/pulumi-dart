import 'package:pulumi/pulumi.dart';
import '../organization_configuration_auto_enable/organization_configuration_auto_enable.dart';
import 'organization_configuration_args3.dart';

/// Resource for managing an Amazon Inspector Organization Configuration.
///
/// > **NOTE:** In order for this resource to work, the account you use must be an Inspector Delegated Admin Account.
///
/// > **NOTE:** When this resource is deleted, EC2, ECR, Lambda, and Lambda code scans will no longer be automatically enabled for new members of your Amazon Inspector organization.
///
/// ## Example Usage
///
/// ### Basic Usage
class OrganizationConfiguration3 extends CustomResource {
  /// Configuration block for auto enabling. See below.
  late final Output<OrganizationConfigurationAutoEnable> autoEnable;

  /// Whether your configuration reached the max account limit.
  late final Output<bool> maxAccountLimitReached;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationConfiguration3(
    String name, {
    OrganizationConfigurationArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/organizationConfiguration:OrganizationConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoEnable =
        registerOutput<OrganizationConfigurationAutoEnable>('autoEnable');
    this.maxAccountLimitReached =
        registerOutput<bool>('maxAccountLimitReached');
    this.region = registerOutput<String>('region');
  }
}
