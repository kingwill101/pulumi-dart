// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_scanning_configuration_rule.dart';

/// Input properties used for looking up and filtering RegistryScanningConfiguration resources.
class RegistryScanningConfigurationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The registry ID the scanning configuration applies to.
  final pulumi.Input<String>? registryId;
  /// One or multiple blocks specifying scanning rules to determine which repository filters are used and at what frequency scanning will occur. See below for schema.
  final pulumi.Input<List<RegistryScanningConfigurationRule>>? rules;
  /// the scanning type to set for the registry. Can be either `ENHANCED` or `BASIC`.
  final pulumi.Input<String>? scanType;

  /// Creates a new [RegistryScanningConfigurationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID the scanning configuration applies to.
  /// [rules] One or multiple blocks specifying scanning rules to determine which repository filters are used and at what frequency scanning will occur. See below for schema.
  /// [scanType] the scanning type to set for the registry. Can be either `ENHANCED` or `BASIC`.
  RegistryScanningConfigurationState({
    this.region,
    this.registryId,
    this.rules,
    this.scanType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'registryId': ?registryId,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RegistryScanningConfigurationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RegistryScanningConfigurationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scanType': ?scanType,
    };
  }

  factory RegistryScanningConfigurationState.fromMap(Map<String, dynamic> map) {
    return RegistryScanningConfigurationState(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      registryId: map['registryId'] == null ? null : ((map['registryId'] as String).input()).input(),
      rules: map['rules'] == null ? null : ((pulumi.Input.decodeList<RegistryScanningConfigurationRule>(map['rules']!, (value) => RegistryScanningConfigurationRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      scanType: map['scanType'] == null ? null : ((map['scanType'] as String).input()).input(),
    );
  }
}

