// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_tl_validation_trust_file.dart';
import 'get_virtual_node_spec_listener_tl_validation_trust_sd.dart';

class GetVirtualNodeSpecListenerTlValidationTrust {
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerTlValidationTrustFile>> files;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerTlValidationTrustSd>> sds;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationTrust].
  /// [files] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  const GetVirtualNodeSpecListenerTlValidationTrust({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTlValidationTrustFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlValidationTrustFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sds': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTlValidationTrustSd>, List<Map<String, dynamic>>>(sds, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlValidationTrustSd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerTlValidationTrust.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationTrust(
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlValidationTrustFile>(map['files']!, (value) => GetVirtualNodeSpecListenerTlValidationTrustFile.fromMap((value as Map).cast<String, dynamic>()))),
      sds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlValidationTrustSd>(map['sds']!, (value) => GetVirtualNodeSpecListenerTlValidationTrustSd.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
