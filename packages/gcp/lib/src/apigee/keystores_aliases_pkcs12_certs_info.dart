// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_pkcs12_certs_info_cert_info.dart';

class KeystoresAliasesPkcs12CertsInfo {
  /// (Output)
  /// List of all properties in the object.
  /// Structure is documented below.
  final List<KeystoresAliasesPkcs12CertsInfoCertInfo>? certInfos;

  /// Creates a new [KeystoresAliasesPkcs12CertsInfo].
  /// [certInfos] (Output)
  KeystoresAliasesPkcs12CertsInfo({this.certInfos});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certInfos': ?certInfos == null
          ? null
          : pulumi.Input.encodeList<
              KeystoresAliasesPkcs12CertsInfoCertInfo,
              Map<String, dynamic>
            >(certInfos!, (value) => value.toMap()),
    };
  }

  factory KeystoresAliasesPkcs12CertsInfo.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesPkcs12CertsInfo(
      certInfos: map['certInfos'] == null
          ? null
          : pulumi.Input.decodeList<KeystoresAliasesPkcs12CertsInfoCertInfo>(
              map['certInfos'],
              (value) => KeystoresAliasesPkcs12CertsInfoCertInfo.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
