// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datazone_environment_blueprint_configuration_environment_blueprint_configuration_args_doc}
/// The set of arguments for EnvironmentBlueprintConfiguration.
/// {@endtemplate}
/// {@macro pulumi_datazone_environment_blueprint_configuration_environment_blueprint_configuration_args_doc}
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

  /// Creates a new [EnvironmentBlueprintConfigurationArgs].
  /// [domainId] ID of the Domain.
  /// [enabledRegions] Regions in which the blueprint is enabled
  /// [environmentBlueprintId] ID of the Environment Blueprint
  /// [manageAccessRoleArn] ARN of the manage access role with which this blueprint is created.
  /// [provisioningRoleArn] ARN of the provisioning role with which this blueprint is created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionalParameters] Parameters for each region in which the blueprint is enabled
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
    return <String, dynamic>{
      'domainId': domainId,
      'enabledRegions': enabledRegions,
      'environmentBlueprintId': environmentBlueprintId,
      'manageAccessRoleArn': ?manageAccessRoleArn,
      'provisioningRoleArn': ?provisioningRoleArn,
      'region': ?region,
      'regionalParameters': ?regionalParameters,
    };
  }

  factory EnvironmentBlueprintConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentBlueprintConfigurationArgs(
      domainId: (map['domainId'] as String).input(),
      enabledRegions: ((map['enabledRegions'] as List).cast<String>()).input(),
      environmentBlueprintId: (map['environmentBlueprintId'] as String).input(),
      manageAccessRoleArn: map['manageAccessRoleArn'] == null ? null : ((map['manageAccessRoleArn'] as String).input()).input(),
      provisioningRoleArn: map['provisioningRoleArn'] == null ? null : ((map['provisioningRoleArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      regionalParameters: map['regionalParameters'] == null ? null : (((map['regionalParameters'] as Map).cast<String, Map<String, String>>()).input()).input(),
    );
  }
}

