// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScopeScopeConfigurationResourceScopeExcludeExpressionCriteriaAlbConfig {
  /// IP address type. Valid values: `dualstack`, `dualstack-without-public-ipv4`, `ipv4`.
  final pulumi.Input<String?>? ipAddressType;
  /// Scheme. Valid values: `internal`, `internet-facing`.
  final pulumi.Input<String?>? scheme;

  /// Creates a new [ScopeScopeConfigurationResourceScopeExcludeExpressionCriteriaAlbConfig].
  /// [ipAddressType] IP address type. Valid values: `dualstack`, `dualstack-without-public-ipv4`, `ipv4`.
  /// [scheme] Scheme. Valid values: `internal`, `internet-facing`.
  const ScopeScopeConfigurationResourceScopeExcludeExpressionCriteriaAlbConfig({
    this.ipAddressType,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'scheme': ?scheme,
    };
  }

  factory ScopeScopeConfigurationResourceScopeExcludeExpressionCriteriaAlbConfig.fromMap(Map<String, dynamic> map) {
    return ScopeScopeConfigurationResourceScopeExcludeExpressionCriteriaAlbConfig(
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
