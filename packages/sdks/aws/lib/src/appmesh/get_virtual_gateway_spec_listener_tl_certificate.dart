// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_listener_tl_certificate_acm.dart';
import 'get_virtual_gateway_spec_listener_tl_certificate_file.dart';
import 'get_virtual_gateway_spec_listener_tl_certificate_sd.dart';

class GetVirtualGatewaySpecListenerTlCertificate {
  final pulumi.Input<List<GetVirtualGatewaySpecListenerTlCertificateAcm>> acms;
  final pulumi.Input<List<GetVirtualGatewaySpecListenerTlCertificateFile>>
  files;
  final pulumi.Input<List<GetVirtualGatewaySpecListenerTlCertificateSd>> sds;

  /// Creates a new [GetVirtualGatewaySpecListenerTlCertificate].
  /// [acms] Required.
  /// [files] Required.
  /// [sds] Required.
  GetVirtualGatewaySpecListenerTlCertificate({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acms':
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecListenerTlCertificateAcm>,
            List<Map<String, dynamic>>
          >(
            acms,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecListenerTlCertificateAcm,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'files':
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecListenerTlCertificateFile>,
            List<Map<String, dynamic>>
          >(
            files,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecListenerTlCertificateFile,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sds':
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecListenerTlCertificateSd>,
            List<Map<String, dynamic>>
          >(
            sds,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecListenerTlCertificateSd,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetVirtualGatewaySpecListenerTlCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerTlCertificate(
      acms: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlCertificateAcm>(
          map['acms']!,
          (value) => GetVirtualGatewaySpecListenerTlCertificateAcm.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      files: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlCertificateFile>(
          map['files']!,
          (value) => GetVirtualGatewaySpecListenerTlCertificateFile.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sds: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlCertificateSd>(
          map['sds']!,
          (value) => GetVirtualGatewaySpecListenerTlCertificateSd.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
