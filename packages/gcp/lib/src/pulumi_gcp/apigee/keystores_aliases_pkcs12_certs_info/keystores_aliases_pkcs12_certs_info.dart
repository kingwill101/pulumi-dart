// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../keystores_aliases_pkcs12_certs_info_cert_info/keystores_aliases_pkcs12_certs_info_cert_info.dart';

class KeystoresAliasesPkcs12CertsInfo {
  /// (Output)
  /// List of all properties in the object.
  /// Structure is documented below.
  final List<KeystoresAliasesPkcs12CertsInfoCertInfo>? certInfos;

  KeystoresAliasesPkcs12CertsInfo({
    this.certInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certInfosValue = certInfos;
    if (certInfosValue != null) {
      map['certInfos'] = Input.encodeList<
          KeystoresAliasesPkcs12CertsInfoCertInfo,
          Map<String, dynamic>>(certInfosValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeystoresAliasesPkcs12CertsInfo.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesPkcs12CertsInfo(
      certInfos: map['certInfos'] == null
          ? null
          : Input.decodeList<KeystoresAliasesPkcs12CertsInfoCertInfo>(
              map['certInfos'],
              (value) => KeystoresAliasesPkcs12CertsInfoCertInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
