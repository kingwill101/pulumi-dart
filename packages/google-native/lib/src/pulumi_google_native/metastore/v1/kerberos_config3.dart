// ignore_for_file: unused_element, unnecessary_cast

import 'secret3.dart';

/// Configuration information for a Kerberos principal.
class KerberosConfig3 {
  /// A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).
  final Secret3? keytab;

  /// A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  final String? krb5ConfigGcsUri;

  /// A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form primary/instance@REALM, but there is no exact format.
  final String? principal;

  KerberosConfig3({
    this.keytab,
    this.krb5ConfigGcsUri,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keytabValue = keytab;
    if (keytabValue != null) {
      map['keytab'] = keytabValue.toMap();
    }
    final krb5ConfigGcsUriValue = krb5ConfigGcsUri;
    if (krb5ConfigGcsUriValue != null) {
      map['krb5ConfigGcsUri'] = krb5ConfigGcsUriValue;
    }
    final principalValue = principal;
    if (principalValue != null) {
      map['principal'] = principalValue;
    }
    return map;
  }

  factory KerberosConfig3.fromMap(Map<String, dynamic> map) {
    return KerberosConfig3(
      keytab: map['keytab'] == null
          ? null
          : Secret3.fromMap((map['keytab'] as Map).cast<String, dynamic>()),
      krb5ConfigGcsUri: map['krb5ConfigGcsUri'] == null
          ? null
          : map['krb5ConfigGcsUri'] as String,
      principal: map['principal'] == null ? null : map['principal'] as String,
    );
  }
}
