// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyzer_configuration_internal_access.dart';
import 'analyzer_configuration_unused_access.dart';

class AnalyzerConfiguration {
  /// Specifies the configuration of an internal access analyzer for an AWS organization or account. This configuration determines how the analyzer evaluates access within your AWS environment. See `internalAccess` Block for details.
  final pulumi.Input<AnalyzerConfigurationInternalAccess>? internalAccess;
  /// Specifies the configuration of an unused access analyzer for an AWS organization or account. See `unusedAccess` Block for details.
  final pulumi.Input<AnalyzerConfigurationUnusedAccess>? unusedAccess;

  /// Creates a new [AnalyzerConfiguration].
  /// [internalAccess] Specifies the configuration of an internal access analyzer for an AWS organization or account. This configuration determines how the analyzer evaluates access within your AWS environment. See `internalAccess` Block for details.
  /// [unusedAccess] Specifies the configuration of an unused access analyzer for an AWS organization or account. See `unusedAccess` Block for details.
  const AnalyzerConfiguration({
    this.internalAccess,
    this.unusedAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalAccess': ?pulumi.Input.mapOptionalInputValue<AnalyzerConfigurationInternalAccess, Map<String, dynamic>>(internalAccess, (value) => value.toMap()),
      'unusedAccess': ?pulumi.Input.mapOptionalInputValue<AnalyzerConfigurationUnusedAccess, Map<String, dynamic>>(unusedAccess, (value) => value.toMap()),
    };
  }

  factory AnalyzerConfiguration.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfiguration(
      internalAccess: (() { final guardedValue = map['internalAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyzerConfigurationInternalAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unusedAccess: (() { final guardedValue = map['unusedAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyzerConfigurationUnusedAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
