// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnvironmentBlueprintConfiguration.
class EnvironmentBlueprintConfigurationArgs {
  /// ID of the Domain.
  final Input<String> domainId;

  /// Regions in which the blueprint is enabled
  ///
  /// The following arguments are optional:
  final Input<List<String>> enabledRegions;

  /// ID of the Environment Blueprint
  final Input<String> environmentBlueprintId;

  /// ARN of the manage access role with which this blueprint is created.
  final Input<String>? manageAccessRoleArn;

  /// ARN of the provisioning role with which this blueprint is created.
  final Input<String>? provisioningRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Parameters for each region in which the blueprint is enabled
  final Input<Map<String, Map<String, String>>>? regionalParameters;

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
      domainId: Input.asInput<String>(map['domainId']),
      enabledRegions: Input.asInput<List<String>>(map['enabledRegions']),
      environmentBlueprintId:
          Input.asInput<String>(map['environmentBlueprintId']),
      manageAccessRoleArn:
          Input.asOptionalInput<String>(map['manageAccessRoleArn']),
      provisioningRoleArn:
          Input.asOptionalInput<String>(map['provisioningRoleArn']),
      region: Input.asOptionalInput<String>(map['region']),
      regionalParameters:
          Input.asOptionalInput<Map<String, Map<String, String>>>(
              map['regionalParameters']),
    );
  }
}
