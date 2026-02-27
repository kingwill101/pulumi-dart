// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnvironmentBlueprintConfiguration.
class EnvironmentBlueprintConfigurationArgs {
  /// ID of the Domain.
  final pulumi.Input<String> domainId;

  /// Regions in which the blueprint is enabled
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> enabledRegions;

  /// ID of the Environment Blueprint
  final pulumi.Input<String> environmentBlueprintId;

  /// ARN of the manage access role with which this blueprint is created.
  final pulumi.Input<String>? manageAccessRoleArn;

  /// ARN of the provisioning role with which this blueprint is created.
  final pulumi.Input<String>? provisioningRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Parameters for each region in which the blueprint is enabled
  final pulumi.Input<Map<String, Map<String, String>>>? regionalParameters;

  EnvironmentBlueprintConfigurationArgs({
    required this.domainId,
    required this.enabledRegions,
    required this.environmentBlueprintId,
    this.manageAccessRoleArn,
    this.provisioningRoleArn,
    this.region,
    this.regionalParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainId'] = domainId;
    map['enabledRegions'] = enabledRegions;
    map['environmentBlueprintId'] = environmentBlueprintId;
    final manageAccessRoleArnValue = manageAccessRoleArn;
    if (manageAccessRoleArnValue != null) {
      map['manageAccessRoleArn'] = manageAccessRoleArnValue;
    }
    final provisioningRoleArnValue = provisioningRoleArn;
    if (provisioningRoleArnValue != null) {
      map['provisioningRoleArn'] = provisioningRoleArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final regionalParametersValue = regionalParameters;
    if (regionalParametersValue != null) {
      map['regionalParameters'] = regionalParametersValue;
    }
    return map;
  }

  factory EnvironmentBlueprintConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentBlueprintConfigurationArgs(
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      enabledRegions: pulumi.Input.asInput<List<String>>(map['enabledRegions']),
      environmentBlueprintId:
          pulumi.Input.asInput<String>(map['environmentBlueprintId']),
      manageAccessRoleArn:
          pulumi.Input.asOptionalInput<String>(map['manageAccessRoleArn']),
      provisioningRoleArn:
          pulumi.Input.asOptionalInput<String>(map['provisioningRoleArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      regionalParameters:
          pulumi.Input.asOptionalInput<Map<String, Map<String, String>>>(
              map['regionalParameters']),
    );
  }
}
