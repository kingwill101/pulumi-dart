import 'package:pulumi/pulumi.dart';
import '../capacity_provider_capacity_provider_scaling_config/capacity_provider_capacity_provider_scaling_config.dart';
import '../capacity_provider_instance_requirement/capacity_provider_instance_requirement.dart';
import '../capacity_provider_permissions_config/capacity_provider_permissions_config.dart';
import '../capacity_provider_timeouts/capacity_provider_timeouts.dart';
import '../capacity_provider_vpc_config/capacity_provider_vpc_config.dart';
import 'capacity_provider_args2.dart';

/// Manages an AWS Lambda Capacity Provider.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Manual Scaling with Specific Instance Types
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lambda Capacity Provider using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/capacityProvider:CapacityProvider example example
/// ```
class CapacityProvider2 extends CustomResource {
  /// ARN of the Capacity Provider.
  late final Output<String> arn;

  /// Configuration block for scaling policy settings. See Capacity Provider Scaling Config below.
  late final Output<List<CapacityProviderCapacityProviderScalingConfig>>
      capacityProviderScalingConfigs;

  /// Configuration block for instance requirements settings. See Instance Requirements below.
  late final Output<List<CapacityProviderInstanceRequirement>>
      instanceRequirements;
  late final Output<String?> kmsKeyArn;

  /// The name of the Capacity Provider.
  late final Output<String> name;

  /// Configuration block for permissions settings. See Permissions Config below.
  ///
  /// The following arguments are optional:
  late final Output<CapacityProviderPermissionsConfig> permissionsConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<CapacityProviderTimeouts?> timeouts;

  /// Configuration block for VPC settings. See VPC Config below.
  late final Output<CapacityProviderVpcConfig> vpcConfig;

  CapacityProvider2(
    String name, {
    CapacityProviderArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/capacityProvider:CapacityProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacityProviderScalingConfigs =
        registerOutput<List<CapacityProviderCapacityProviderScalingConfig>>(
            'capacityProviderScalingConfigs');
    this.instanceRequirements =
        registerOutput<List<CapacityProviderInstanceRequirement>>(
            'instanceRequirements');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.permissionsConfig =
        registerOutput<CapacityProviderPermissionsConfig>('permissionsConfig');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<CapacityProviderTimeouts?>('timeouts');
    this.vpcConfig = registerOutput<CapacityProviderVpcConfig>('vpcConfig');
  }
}
