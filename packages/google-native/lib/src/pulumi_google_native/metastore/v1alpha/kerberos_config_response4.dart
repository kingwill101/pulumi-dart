// ignore_for_file: unused_element, unnecessary_cast

import 'secret_response4.dart';

/// Configuration information for a Kerberos principal.
class KerberosConfigResponse4 {
  /// A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).
  final SecretResponse4 keytab;

  /// A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  final String krb5ConfigGcsUri;

  /// A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form primary/instance@REALM, but there is no exact format.
  final String principal;

  KerberosConfigResponse4({
    required this.keytab,
    required this.krb5ConfigGcsUri,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keytab'] = keytab.toMap();
    map['krb5ConfigGcsUri'] = krb5ConfigGcsUri;
    map['principal'] = principal;
    return map;
  }

  factory KerberosConfigResponse4.fromMap(Map<String, dynamic> map) {
    return KerberosConfigResponse4(
      keytab: SecretResponse4.fromMap(
          (map['keytab'] as Map).cast<String, dynamic>()),
      krb5ConfigGcsUri: map['krb5ConfigGcsUri'] as String,
      principal: map['principal'] as String,
    );
  }
}
