import 'package:pulumi/pulumi.dart';
import '../block_public_access_configuration_permitted_public_security_group_rule_range/block_public_access_configuration_permitted_public_security_group_rule_range.dart';
import 'block_public_access_configuration_args.dart';

/// Resource for managing an AWS EMR block public access configuration. This region level security configuration restricts the launch of EMR clusters that have associated security groups permitting public access on unspecified ports. See the [EMR Block Public Access Configuration](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-block-public-access.html) documentation for further information.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Default Configuration
///
/// By default, each AWS region is equipped with a block public access configuration that prevents EMR clusters from being launched if they have security group rules permitting public access on any port except for port 22. The default configuration can be managed using this resource.
///
///
///
/// > **NOTE:** If an `aws.emr.BlockPublicAccessConfiguration` resource is destroyed, the configuration will reset to this default configuration.
///
/// ### Multiple Permitted Public Security Group Rule Ranges
///
/// The resource permits specification of multiple `permitted_public_security_group_rule_range` blocks.
///
///
///
/// ### Disabling Block Public Access
///
/// To permit EMR clusters to be launched in the configured region regardless of associated security group rules, the Block Public Access feature can be disabled using this resource.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the current EMR Block Public Access Configuration. For example:
///
/// ```sh
/// $ pulumi import aws:emr/blockPublicAccessConfiguration:BlockPublicAccessConfiguration example current
/// ```
class BlockPublicAccessConfiguration extends CustomResource {
  /// Enable or disable EMR Block Public Access.
  ///
  /// The following arguments are optional:
  late final Output<bool> blockPublicSecurityGroupRules;

  /// Configuration block for defining permitted public security group rule port ranges. Can be defined multiple times per resource. Only valid if `block_public_security_group_rules` is set to `true`.
  late final Output<
          List<
              BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>?>
      permittedPublicSecurityGroupRuleRanges;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  BlockPublicAccessConfiguration(
    String name, {
    BlockPublicAccessConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:emr/blockPublicAccessConfiguration:BlockPublicAccessConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blockPublicSecurityGroupRules =
        registerOutput<bool>('blockPublicSecurityGroupRules');
    this.permittedPublicSecurityGroupRuleRanges = registerOutput<
            List<
                BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>?>(
        'permittedPublicSecurityGroupRuleRanges');
    this.region = registerOutput<String>('region');
  }
}
