// ignore_for_file: unused_element, unnecessary_cast

class ReplicationInstanceKerberosAuthenticationSettings {
  /// ARN of the IAM role that grants AWS DMS access to the secret containing key cache file for the Kerberos authentication.
  final String keyCacheSecretIamArn;

  /// Secret ID that stores the key cache file required for Kerberos authentication.
  final String keyCacheSecretId;

  /// Contents of krb5 configuration file required for Kerberos authentication.
  final String krb5FileContents;

  ReplicationInstanceKerberosAuthenticationSettings({
    required this.keyCacheSecretIamArn,
    required this.keyCacheSecretId,
    required this.krb5FileContents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyCacheSecretIamArn'] = keyCacheSecretIamArn;
    map['keyCacheSecretId'] = keyCacheSecretId;
    map['krb5FileContents'] = krb5FileContents;
    return map;
  }

  factory ReplicationInstanceKerberosAuthenticationSettings.fromMap(
      Map<String, dynamic> map) {
    return ReplicationInstanceKerberosAuthenticationSettings(
      keyCacheSecretIamArn: map['keyCacheSecretIamArn'] as String,
      keyCacheSecretId: map['keyCacheSecretId'] as String,
      krb5FileContents: map['krb5FileContents'] as String,
    );
  }
}
