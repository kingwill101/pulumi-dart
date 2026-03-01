// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_listener_tl_validation_trust_file.dart';
import 'get_virtual_gateway_spec_listener_tl_validation_trust_sd.dart';

class GetVirtualGatewaySpecListenerTlValidationTrust {
  final List<GetVirtualGatewaySpecListenerTlValidationTrustFile> files;
  final List<GetVirtualGatewaySpecListenerTlValidationTrustSd> sds;

  /// Creates a new [GetVirtualGatewaySpecListenerTlValidationTrust].
  /// [files] Required.
  /// [sds] Required.
  GetVirtualGatewaySpecListenerTlValidationTrust({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files':
          pulumi.Input.encodeList<
            GetVirtualGatewaySpecListenerTlValidationTrustFile,
            Map<String, dynamic>
          >(files, (value) => value.toMap()),
      'sds':
          pulumi.Input.encodeList<
            GetVirtualGatewaySpecListenerTlValidationTrustSd,
            Map<String, dynamic>
          >(sds, (value) => value.toMap()),
    };
  }

  factory GetVirtualGatewaySpecListenerTlValidationTrust.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerTlValidationTrust(
      files:
          pulumi.Input.decodeList<
            GetVirtualGatewaySpecListenerTlValidationTrustFile
          >(
            map['files'],
            (value) =>
                GetVirtualGatewaySpecListenerTlValidationTrustFile.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      sds:
          pulumi.Input.decodeList<
            GetVirtualGatewaySpecListenerTlValidationTrustSd
          >(
            map['sds'],
            (value) => GetVirtualGatewaySpecListenerTlValidationTrustSd.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
