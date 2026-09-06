// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication configuration information
class ServiceAuthenticationConfigurationInfo {
  /// The audience url for the service
  final pulumi.Input<String?>? audience;
  /// The authority url for the service
  final pulumi.Input<String?>? authority;
  /// If the SMART on FHIR proxy is enabled
  final pulumi.Input<bool?>? smartProxyEnabled;

  /// Creates a new [ServiceAuthenticationConfigurationInfo].
  /// [audience] The audience url for the service
  /// [authority] The authority url for the service
  /// [smartProxyEnabled] If the SMART on FHIR proxy is enabled
  const ServiceAuthenticationConfigurationInfo({
    this.audience,
    this.authority,
    this.smartProxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'authority': ?authority,
      'smartProxyEnabled': ?smartProxyEnabled,
    };
  }

  factory ServiceAuthenticationConfigurationInfo.fromMap(Map<String, dynamic> map) {
    return ServiceAuthenticationConfigurationInfo(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smartProxyEnabled: (() { final guardedValue = map['smartProxyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
