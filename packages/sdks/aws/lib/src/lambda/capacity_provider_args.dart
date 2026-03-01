// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_capacity_provider_scaling_config.dart';
import 'capacity_provider_instance_requirement.dart';
import 'capacity_provider_permissions_config.dart';
import 'capacity_provider_timeouts.dart';
import 'capacity_provider_vpc_config.dart';

/// {@template pulumi_lambda_capacity_provider_capacity_provider_args_doc}
/// The set of arguments for CapacityProvider.
/// {@endtemplate}
/// {@macro pulumi_lambda_capacity_provider_capacity_provider_args_doc}
class CapacityProviderArgs {
  /// Configuration block for scaling policy settings. See Capacity Provider Scaling Config below.
  final pulumi.Input<List<CapacityProviderCapacityProviderScalingConfig>>? capacityProviderScalingConfigs;
  /// Configuration block for instance requirements settings. See Instance Requirements below.
  final pulumi.Input<List<CapacityProviderInstanceRequirement>>? instanceRequirements;
  final pulumi.Input<String>? kmsKeyArn;
  /// The name of the Capacity Provider.
  final pulumi.Input<String>? name;
  /// Configuration block for permissions settings. See Permissions Config below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CapacityProviderPermissionsConfig> permissionsConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CapacityProviderTimeouts>? timeouts;
  /// Configuration block for VPC settings. See VPC Config below.
  final pulumi.Input<CapacityProviderVpcConfig> vpcConfig;

  /// Creates a new [CapacityProviderArgs].
  /// [capacityProviderScalingConfigs] Configuration block for scaling policy settings. See Capacity Provider Scaling Config below.
  /// [instanceRequirements] Configuration block for instance requirements settings. See Instance Requirements below.
  /// [kmsKeyArn] Optional.
  /// [name] The name of the Capacity Provider.
  /// [permissionsConfig] Configuration block for permissions settings. See Permissions Config below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcConfig] Configuration block for VPC settings. See VPC Config below.
  CapacityProviderArgs({
    pulumi.Output<List<CapacityProviderCapacityProviderScalingConfig>>? capacityProviderScalingConfigs,
    pulumi.Output<List<CapacityProviderInstanceRequirement>>? instanceRequirements,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? name,
    required pulumi.Output<CapacityProviderPermissionsConfig> permissionsConfig,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<CapacityProviderTimeouts>? timeouts,
    required pulumi.Output<CapacityProviderVpcConfig> vpcConfig,
  }) :
      capacityProviderScalingConfigs = pulumi.Input.asOptionalInput<List<CapacityProviderCapacityProviderScalingConfig>>(capacityProviderScalingConfigs),
      instanceRequirements = pulumi.Input.asOptionalInput<List<CapacityProviderInstanceRequirement>>(instanceRequirements),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      permissionsConfig = pulumi.Input.asInput<CapacityProviderPermissionsConfig>(permissionsConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<CapacityProviderTimeouts>(timeouts),
      vpcConfig = pulumi.Input.asInput<CapacityProviderVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<CapacityProviderCapacityProviderScalingConfig>, List<Map<String, dynamic>>>(capacityProviderScalingConfigs, (value) => pulumi.Input.encodeList<CapacityProviderCapacityProviderScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceRequirements': ?pulumi.Input.mapOptionalInputValue<List<CapacityProviderInstanceRequirement>, List<Map<String, dynamic>>>(instanceRequirements, (value) => pulumi.Input.encodeList<CapacityProviderInstanceRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'permissionsConfig': pulumi.Input.mapInputValue<CapacityProviderPermissionsConfig, Map<String, dynamic>>(permissionsConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapacityProviderTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcConfig': pulumi.Input.mapInputValue<CapacityProviderVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory CapacityProviderArgs.fromMap(Map<String, dynamic> map) {
    return CapacityProviderArgs(
      capacityProviderScalingConfigs: map['capacityProviderScalingConfigs'] == null ? null : pulumi.Output.create<List<CapacityProviderCapacityProviderScalingConfig>>(pulumi.Input.decodeList<CapacityProviderCapacityProviderScalingConfig>(map['capacityProviderScalingConfigs'], (value) => CapacityProviderCapacityProviderScalingConfig.fromMap((value as Map).cast<String, dynamic>()))),
      instanceRequirements: map['instanceRequirements'] == null ? null : pulumi.Output.create<List<CapacityProviderInstanceRequirement>>(pulumi.Input.decodeList<CapacityProviderInstanceRequirement>(map['instanceRequirements'], (value) => CapacityProviderInstanceRequirement.fromMap((value as Map).cast<String, dynamic>()))),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permissionsConfig: pulumi.Output.create<CapacityProviderPermissionsConfig>(CapacityProviderPermissionsConfig.fromMap((map['permissionsConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CapacityProviderTimeouts>(CapacityProviderTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcConfig: pulumi.Output.create<CapacityProviderVpcConfig>(CapacityProviderVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

