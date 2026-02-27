// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../keystores_aliases_self_signed_cert_certs_info_cert_info/keystores_aliases_self_signed_cert_certs_info_cert_info.dart';

class KeystoresAliasesSelfSignedCertCertsInfo {
  /// (Output)
  /// List of all properties in the object.
  /// Structure is documented below.
  final List<KeystoresAliasesSelfSignedCertCertsInfoCertInfo>? certInfos;

  KeystoresAliasesSelfSignedCertCertsInfo({
    this.certInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certInfosValue = certInfos;
    if (certInfosValue != null) {
      map['certInfos'] = pulumi.Input.encodeList<
          KeystoresAliasesSelfSignedCertCertsInfoCertInfo,
          Map<String, dynamic>>(certInfosValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeystoresAliasesSelfSignedCertCertsInfo.fromMap(
      Map<String, dynamic> map) {
    return KeystoresAliasesSelfSignedCertCertsInfo(
      certInfos: map['certInfos'] == null
          ? null
          : pulumi.Input.decodeList<
                  KeystoresAliasesSelfSignedCertCertsInfoCertInfo>(
              map['certInfos'],
              (value) =>
                  KeystoresAliasesSelfSignedCertCertsInfoCertInfo.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
