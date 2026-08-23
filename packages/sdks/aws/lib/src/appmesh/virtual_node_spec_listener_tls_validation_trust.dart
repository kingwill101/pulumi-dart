// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_tls_validation_trust_file.dart';
import 'virtual_node_spec_listener_tls_validation_trust_sds.dart';

class VirtualNodeSpecListenerTlsValidationTrust {
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTlsValidationTrustFile>? file;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTlsValidationTrustSds>? sds;

  /// Creates a new [VirtualNodeSpecListenerTlsValidationTrust].
  /// [file] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  const VirtualNodeSpecListenerTlsValidationTrust({
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTlsValidationTrustFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'sds': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTlsValidationTrustSds, Map<String, dynamic>>(sds, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTlsValidationTrust.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsValidationTrust(
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTlsValidationTrustFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sds: (() { final guardedValue = map['sds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTlsValidationTrustSds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
