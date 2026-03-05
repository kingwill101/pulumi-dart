// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_scanning_configuration_rule.dart';

/// {@template pulumi_ecr_registry_scanning_configuration_registry_scanning_configuration_args_doc}
/// The set of arguments for RegistryScanningConfiguration.
/// {@endtemplate}
/// {@macro pulumi_ecr_registry_scanning_configuration_registry_scanning_configuration_args_doc}
class RegistryScanningConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// One or multiple blocks specifying scanning rules to determine which repository filters are used and at what frequency scanning will occur. See below for schema.
  final pulumi.Input<List<RegistryScanningConfigurationRule>>? rules;
  /// the scanning type to set for the registry. Can be either `ENHANCED` or `BASIC`.
  final pulumi.Input<String> scanType;

  /// Creates a new [RegistryScanningConfigurationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] One or multiple blocks specifying scanning rules to determine which repository filters are used and at what frequency scanning will occur. See below for schema.
  /// [scanType] the scanning type to set for the registry. Can be either `ENHANCED` or `BASIC`.
  RegistryScanningConfigurationArgs({
    this.region,
    this.rules,
    required this.scanType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RegistryScanningConfigurationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RegistryScanningConfigurationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scanType': scanType,
    };
  }

  factory RegistryScanningConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RegistryScanningConfigurationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryScanningConfigurationRule>(guardedValue, (value) => RegistryScanningConfigurationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scanType: pulumi.Input.fromValue(map['scanType'] as String),
    );
  }
}

