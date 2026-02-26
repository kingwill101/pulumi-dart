// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../registry_scanning_configuration_rule/registry_scanning_configuration_rule.dart';

/// The set of arguments for RegistryScanningConfiguration.
class RegistryScanningConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// One or multiple blocks specifying scanning rules to determine which repository filters are used and at what frequency scanning will occur. See below for schema.
  final Input<List<RegistryScanningConfigurationRule>>? rules;

  /// the scanning type to set for the registry. Can be either `ENHANCED` or `BASIC`.
  final Input<String> scanType;

  RegistryScanningConfigurationArgs({
    this.region,
    this.rules,
    required this.scanType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<
              List<RegistryScanningConfigurationRule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => Input.encodeList<RegistryScanningConfigurationRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['scanType'] = scanType;
    return map;
  }

  factory RegistryScanningConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RegistryScanningConfigurationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      rules: Input.asOptionalInput<List<RegistryScanningConfigurationRule>>(
          map['rules']),
      scanType: Input.asInput<String>(map['scanType']),
    );
  }
}
