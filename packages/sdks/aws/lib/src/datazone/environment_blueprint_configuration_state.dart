// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentBlueprintConfiguration resources.
class EnvironmentBlueprintConfigurationState {
  /// ID of the Domain.
  final pulumi.Input<String>? domainId;
  /// Regions in which the blueprint is enabled
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? enabledRegions;
  /// ID of the Environment Blueprint
  final pulumi.Input<String>? environmentBlueprintId;
  /// ARN of the manage access role with which this blueprint is created.
  final pulumi.Input<String>? manageAccessRoleArn;
  /// ARN of the provisioning role with which this blueprint is created.
  final pulumi.Input<String>? provisioningRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Parameters for each region in which the blueprint is enabled
  final pulumi.Input<Map<String, Map<String, String>>>? regionalParameters;

  /// Creates a new [EnvironmentBlueprintConfigurationState].
  /// [domainId] ID of the Domain.
  /// [enabledRegions] Regions in which the blueprint is enabled
  /// [environmentBlueprintId] ID of the Environment Blueprint
  /// [manageAccessRoleArn] ARN of the manage access role with which this blueprint is created.
  /// [provisioningRoleArn] ARN of the provisioning role with which this blueprint is created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionalParameters] Parameters for each region in which the blueprint is enabled
  EnvironmentBlueprintConfigurationState({
    pulumi.Output<String>? domainId,
    pulumi.Output<List<String>>? enabledRegions,
    pulumi.Output<String>? environmentBlueprintId,
    pulumi.Output<String>? manageAccessRoleArn,
    pulumi.Output<String>? provisioningRoleArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, Map<String, String>>>? regionalParameters,
  }) :
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      enabledRegions = pulumi.Input.asOptionalInput<List<String>>(enabledRegions),
      environmentBlueprintId = pulumi.Input.asOptionalInput<String>(environmentBlueprintId),
      manageAccessRoleArn = pulumi.Input.asOptionalInput<String>(manageAccessRoleArn),
      provisioningRoleArn = pulumi.Input.asOptionalInput<String>(provisioningRoleArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      regionalParameters = pulumi.Input.asOptionalInput<Map<String, Map<String, String>>>(regionalParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'enabledRegions': ?enabledRegions,
      'environmentBlueprintId': ?environmentBlueprintId,
      'manageAccessRoleArn': ?manageAccessRoleArn,
      'provisioningRoleArn': ?provisioningRoleArn,
      'region': ?region,
      'regionalParameters': ?regionalParameters,
    };
  }

  factory EnvironmentBlueprintConfigurationState.fromMap(Map<String, dynamic> map) {
    return EnvironmentBlueprintConfigurationState(
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      enabledRegions: map['enabledRegions'] == null ? null : pulumi.Output.create<List<String>>((map['enabledRegions'] as List).cast<String>()),
      environmentBlueprintId: map['environmentBlueprintId'] == null ? null : pulumi.Output.create<String>(map['environmentBlueprintId'] as String),
      manageAccessRoleArn: map['manageAccessRoleArn'] == null ? null : pulumi.Output.create<String>(map['manageAccessRoleArn'] as String),
      provisioningRoleArn: map['provisioningRoleArn'] == null ? null : pulumi.Output.create<String>(map['provisioningRoleArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      regionalParameters: map['regionalParameters'] == null ? null : pulumi.Output.create<Map<String, Map<String, String>>>((map['regionalParameters'] as Map).cast<String, Map<String, String>>()),
    );
  }
}

