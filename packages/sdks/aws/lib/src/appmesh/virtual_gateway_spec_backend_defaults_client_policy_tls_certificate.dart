// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_certificate_file.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_certificate_sds.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate {
  /// Local file certificate.
  final pulumi.Input<
    VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile
  >?
  file;

  /// A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final pulumi.Input<
    VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds
  >?
  sds;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate].
  /// [file] Local file certificate.
  /// [sds] A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate({
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile,
            Map<String, dynamic>
          >(file, (value) => value.toMap()),
      'sds':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds,
            Map<String, dynamic>
          >(sds, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate(
      file: (() {
        final guardedValue = map['file'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sds: (() {
        final guardedValue = map['sds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
