// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_listener_tls_validation_trust_file.dart';
import 'virtual_gateway_spec_listener_tls_validation_trust_sds.dart';

class VirtualGatewaySpecListenerTlsValidationTrust {
  /// TLS validation context trust for a local file certificate.
  final pulumi.Input<VirtualGatewaySpecListenerTlsValidationTrustFile>? file;

  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final pulumi.Input<VirtualGatewaySpecListenerTlsValidationTrustSds>? sds;

  /// Creates a new [VirtualGatewaySpecListenerTlsValidationTrust].
  /// [file] TLS validation context trust for a local file certificate.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualGatewaySpecListenerTlsValidationTrust({this.file, this.sds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualGatewaySpecListenerTlsValidationTrustFile,
            Map<String, dynamic>
          >(file, (value) => value.toMap()),
      'sds':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualGatewaySpecListenerTlsValidationTrustSds,
            Map<String, dynamic>
          >(sds, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecListenerTlsValidationTrust.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecListenerTlsValidationTrust(
      file: (() {
        final guardedValue = map['file'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualGatewaySpecListenerTlsValidationTrustFile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sds: (() {
        final guardedValue = map['sds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualGatewaySpecListenerTlsValidationTrustSds.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
