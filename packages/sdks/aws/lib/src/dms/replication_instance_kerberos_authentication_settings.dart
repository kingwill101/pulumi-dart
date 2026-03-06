// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicationInstanceKerberosAuthenticationSettings {
  /// ARN of the IAM role that grants AWS DMS access to the secret containing key cache file for the Kerberos authentication.
  final pulumi.Input<String> keyCacheSecretIamArn;
  /// Secret ID that stores the key cache file required for Kerberos authentication.
  final pulumi.Input<String> keyCacheSecretId;
  /// Contents of krb5 configuration file required for Kerberos authentication.
  final pulumi.Input<String> krb5FileContents;

  /// Creates a new [ReplicationInstanceKerberosAuthenticationSettings].
  /// [keyCacheSecretIamArn] ARN of the IAM role that grants AWS DMS access to the secret containing key cache file for the Kerberos authentication.
  /// [keyCacheSecretId] Secret ID that stores the key cache file required for Kerberos authentication.
  /// [krb5FileContents] Contents of krb5 configuration file required for Kerberos authentication.
  const ReplicationInstanceKerberosAuthenticationSettings({
    required this.keyCacheSecretIamArn,
    required this.keyCacheSecretId,
    required this.krb5FileContents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyCacheSecretIamArn': keyCacheSecretIamArn,
      'keyCacheSecretId': keyCacheSecretId,
      'krb5FileContents': krb5FileContents,
    };
  }

  factory ReplicationInstanceKerberosAuthenticationSettings.fromMap(Map<String, dynamic> map) {
    return ReplicationInstanceKerberosAuthenticationSettings(
      keyCacheSecretIamArn: pulumi.Input.fromValue(map['keyCacheSecretIamArn'] as String),
      keyCacheSecretId: pulumi.Input.fromValue(map['keyCacheSecretId'] as String),
      krb5FileContents: pulumi.Input.fromValue(map['krb5FileContents'] as String),
    );
  }
}

