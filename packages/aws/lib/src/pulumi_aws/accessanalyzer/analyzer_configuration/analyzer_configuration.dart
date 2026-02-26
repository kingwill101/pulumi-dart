// ignore_for_file: unused_element, unnecessary_cast

import '../analyzer_configuration_internal_access/analyzer_configuration_internal_access.dart';
import '../analyzer_configuration_unused_access/analyzer_configuration_unused_access.dart';

class AnalyzerConfiguration {
  /// Specifies the configuration of an internal access analyzer for an AWS organization or account. This configuration determines how the analyzer evaluates access within your AWS environment. See <span pulumi-lang-nodejs="`internalAccess`" pulumi-lang-dotnet="`InternalAccess`" pulumi-lang-go="`internalAccess`" pulumi-lang-python="`internal_access`" pulumi-lang-yaml="`internalAccess`" pulumi-lang-java="`internalAccess`">`internal_access`</span> Block for details.
  final AnalyzerConfigurationInternalAccess? internalAccess;

  /// Specifies the configuration of an unused access analyzer for an AWS organization or account. See <span pulumi-lang-nodejs="`unusedAccess`" pulumi-lang-dotnet="`UnusedAccess`" pulumi-lang-go="`unusedAccess`" pulumi-lang-python="`unused_access`" pulumi-lang-yaml="`unusedAccess`" pulumi-lang-java="`unusedAccess`">`unused_access`</span> Block for details.
  final AnalyzerConfigurationUnusedAccess? unusedAccess;

  AnalyzerConfiguration({
    this.internalAccess,
    this.unusedAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final internalAccessValue = internalAccess;
    if (internalAccessValue != null) {
      map['internalAccess'] = internalAccessValue.toMap();
    }
    final unusedAccessValue = unusedAccess;
    if (unusedAccessValue != null) {
      map['unusedAccess'] = unusedAccessValue.toMap();
    }
    return map;
  }

  factory AnalyzerConfiguration.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfiguration(
      internalAccess: map['internalAccess'] == null
          ? null
          : AnalyzerConfigurationInternalAccess.fromMap(
              (map['internalAccess'] as Map).cast<String, dynamic>()),
      unusedAccess: map['unusedAccess'] == null
          ? null
          : AnalyzerConfigurationUnusedAccess.fromMap(
              (map['unusedAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
