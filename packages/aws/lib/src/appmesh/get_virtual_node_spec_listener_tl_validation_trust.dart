// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_tl_validation_trust_file.dart';
import 'get_virtual_node_spec_listener_tl_validation_trust_sd.dart';

class GetVirtualNodeSpecListenerTlValidationTrust {
  final List<GetVirtualNodeSpecListenerTlValidationTrustFile> files;
  final List<GetVirtualNodeSpecListenerTlValidationTrustSd> sds;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationTrust].
  /// [files] Required.
  /// [sds] Required.
  GetVirtualNodeSpecListenerTlValidationTrust({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlValidationTrustFile, Map<String, dynamic>>(files, (value) => value.toMap()),
      'sds': pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlValidationTrustSd, Map<String, dynamic>>(sds, (value) => value.toMap()),
    };
  }

  factory GetVirtualNodeSpecListenerTlValidationTrust.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationTrust(
      files: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlValidationTrustFile>(map['files'], (value) => GetVirtualNodeSpecListenerTlValidationTrustFile.fromMap((value as Map).cast<String, dynamic>())),
      sds: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlValidationTrustSd>(map['sds'], (value) => GetVirtualNodeSpecListenerTlValidationTrustSd.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

