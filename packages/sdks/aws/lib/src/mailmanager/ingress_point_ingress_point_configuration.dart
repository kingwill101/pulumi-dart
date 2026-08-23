// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_point_ingress_point_configuration_tls_auth_configuration.dart';

class IngressPointIngressPointConfiguration {
  /// ARN of the secret in AWS Secrets Manager that holds the SMTP password, used for `AUTH` ingress points.
  final pulumi.Input<String>? secretArn;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// SMTP password used for `AUTH` ingress points. This argument is not stored in state. Requires `smtpPasswordWoVersion` to be set. See Write-Only Arguments for more information.
  final pulumi.Input<String>? smtpPasswordWo;
  /// Version number for `smtpPasswordWo`. Increment this value to trigger a password update. Required when using `smtpPasswordWo`.
  final pulumi.Input<int>? smtpPasswordWoVersion;
  /// Configuration used to authenticate with `MTLS` ingress points. See `tlsAuthConfiguration` Block for details.
  final pulumi.Input<IngressPointIngressPointConfigurationTlsAuthConfiguration>? tlsAuthConfiguration;

  /// Creates a new [IngressPointIngressPointConfiguration].
  /// [secretArn] ARN of the secret in AWS Secrets Manager that holds the SMTP password, used for `AUTH` ingress points.
  /// [smtpPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [smtpPasswordWoVersion] Version number for `smtpPasswordWo`. Increment this value to trigger a password update. Required when using `smtpPasswordWo`.
  /// [tlsAuthConfiguration] Configuration used to authenticate with `MTLS` ingress points. See `tlsAuthConfiguration` Block for details.
  const IngressPointIngressPointConfiguration({
    this.secretArn,
    this.smtpPasswordWo,
    this.smtpPasswordWoVersion,
    this.tlsAuthConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretArn': ?secretArn,
      'smtpPasswordWo': ?smtpPasswordWo,
      'smtpPasswordWoVersion': ?smtpPasswordWoVersion,
      'tlsAuthConfiguration': ?pulumi.Input.mapOptionalInputValue<IngressPointIngressPointConfigurationTlsAuthConfiguration, Map<String, dynamic>>(tlsAuthConfiguration, (value) => value.toMap()),
    };
  }

  factory IngressPointIngressPointConfiguration.fromMap(Map<String, dynamic> map) {
    return IngressPointIngressPointConfiguration(
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smtpPasswordWo: (() { final guardedValue = map['smtpPasswordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smtpPasswordWoVersion: (() { final guardedValue = map['smtpPasswordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tlsAuthConfiguration: (() { final guardedValue = map['tlsAuthConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointIngressPointConfigurationTlsAuthConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
