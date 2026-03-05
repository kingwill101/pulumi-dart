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
    this.domainId,
    this.enabledRegions,
    this.environmentBlueprintId,
    this.manageAccessRoleArn,
    this.provisioningRoleArn,
    this.region,
    this.regionalParameters,
  });

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
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledRegions: (() { final guardedValue = map['enabledRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environmentBlueprintId: (() { final guardedValue = map['environmentBlueprintId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manageAccessRoleArn: (() { final guardedValue = map['manageAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningRoleArn: (() { final guardedValue = map['provisioningRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalParameters: (() { final guardedValue = map['regionalParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, Map<String, String>>()); })(),
    );
  }
}

