// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProviderSettingsOracleSettings {
  /// Address of the Oracle Automatic Storage Management (ASM) server used with Binary Reader. See [Oracle change data capture configuration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration).
  final pulumi.Input<String?>? asmServer;
  /// ARN of the DMS certificate used for the SSL connection.
  final pulumi.Input<String?>? certificateArn;
  /// Database name on the Oracle data provider.
  final pulumi.Input<String?>? databaseName;
  /// Port of the Oracle server. Valid values are between `1` and `65535`.
  final pulumi.Input<int?>? port;
  /// ARN of the IAM role used to access the S3 bucket containing the user-defined schema.
  final pulumi.Input<String?>? s3AccessRoleArn;
  /// S3 path containing the user-defined schema.
  final pulumi.Input<String?>? s3Path;
  /// ARN of the IAM role that grants access to the Secrets Manager secret containing Oracle ASM connection details.
  final pulumi.Input<String?>? secretsManagerOracleAsmAccessRoleArn;
  /// Identifier of the Secrets Manager secret containing Oracle ASM connection details. Required when the data provider uses an Oracle ASM server.
  final pulumi.Input<String?>? secretsManagerOracleAsmSecretId;
  /// ARN of the IAM role that grants access to the Secrets Manager secret containing the transparent data encryption (TDE) password.
  final pulumi.Input<String?>? secretsManagerSecurityDbEncryptionAccessRoleArn;
  /// Identifier of the Secrets Manager secret containing the TDE password used by Binary Reader to access encrypted Oracle redo logs.
  final pulumi.Input<String?>? secretsManagerSecurityDbEncryptionSecretId;
  /// Hostname of the Oracle server.
  final pulumi.Input<String?>? serverName;
  /// SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  final pulumi.Input<String?>? sslMode;

  /// Creates a new [DataProviderSettingsOracleSettings].
  /// [asmServer] Address of the Oracle Automatic Storage Management (ASM) server used with Binary Reader. See [Oracle change data capture configuration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration).
  /// [certificateArn] ARN of the DMS certificate used for the SSL connection.
  /// [databaseName] Database name on the Oracle data provider.
  /// [port] Port of the Oracle server. Valid values are between `1` and `65535`.
  /// [s3AccessRoleArn] ARN of the IAM role used to access the S3 bucket containing the user-defined schema.
  /// [s3Path] S3 path containing the user-defined schema.
  /// [secretsManagerOracleAsmAccessRoleArn] ARN of the IAM role that grants access to the Secrets Manager secret containing Oracle ASM connection details.
  /// [secretsManagerOracleAsmSecretId] Identifier of the Secrets Manager secret containing Oracle ASM connection details. Required when the data provider uses an Oracle ASM server.
  /// [secretsManagerSecurityDbEncryptionAccessRoleArn] ARN of the IAM role that grants access to the Secrets Manager secret containing the transparent data encryption (TDE) password.
  /// [secretsManagerSecurityDbEncryptionSecretId] Identifier of the Secrets Manager secret containing the TDE password used by Binary Reader to access encrypted Oracle redo logs.
  /// [serverName] Hostname of the Oracle server.
  /// [sslMode] SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  const DataProviderSettingsOracleSettings({
    this.asmServer,
    this.certificateArn,
    this.databaseName,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.secretsManagerOracleAsmAccessRoleArn,
    this.secretsManagerOracleAsmSecretId,
    this.secretsManagerSecurityDbEncryptionAccessRoleArn,
    this.secretsManagerSecurityDbEncryptionSecretId,
    this.serverName,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asmServer': ?asmServer,
      'certificateArn': ?certificateArn,
      'databaseName': ?databaseName,
      'port': ?port,
      's3AccessRoleArn': ?s3AccessRoleArn,
      's3Path': ?s3Path,
      'secretsManagerOracleAsmAccessRoleArn': ?secretsManagerOracleAsmAccessRoleArn,
      'secretsManagerOracleAsmSecretId': ?secretsManagerOracleAsmSecretId,
      'secretsManagerSecurityDbEncryptionAccessRoleArn': ?secretsManagerSecurityDbEncryptionAccessRoleArn,
      'secretsManagerSecurityDbEncryptionSecretId': ?secretsManagerSecurityDbEncryptionSecretId,
      'serverName': ?serverName,
      'sslMode': ?sslMode,
    };
  }

  factory DataProviderSettingsOracleSettings.fromMap(Map<String, dynamic> map) {
    return DataProviderSettingsOracleSettings(
      asmServer: (() { final guardedValue = map['asmServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      s3AccessRoleArn: (() { final guardedValue = map['s3AccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Path: (() { final guardedValue = map['s3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagerOracleAsmAccessRoleArn: (() { final guardedValue = map['secretsManagerOracleAsmAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagerOracleAsmSecretId: (() { final guardedValue = map['secretsManagerOracleAsmSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagerSecurityDbEncryptionAccessRoleArn: (() { final guardedValue = map['secretsManagerSecurityDbEncryptionAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagerSecurityDbEncryptionSecretId: (() { final guardedValue = map['secretsManagerSecurityDbEncryptionSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
