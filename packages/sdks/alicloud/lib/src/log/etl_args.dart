// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'etl_etl_sink.dart';

/// {@template pulumi_log_etl_etl_args_doc}
/// The set of arguments for Etl.
/// {@endtemplate}
/// {@macro pulumi_log_etl_etl_args_doc}
class EtlArgs {
  /// Source logstore access key id.
  final pulumi.Input<String>? accessKeyId;
  /// Source logstore access key secret.
  final pulumi.Input<String>? accessKeySecret;
  /// The etl job create time.
  final pulumi.Input<int>? createTime;
  /// Description of the log etl job.
  final pulumi.Input<String>? description;
  /// Log service etl job alias.
  final pulumi.Input<String> displayName;
  /// The name of the log etl job.
  final pulumi.Input<String> etlName;
  /// Target logstore configuration for delivery after data processing. See `etl_sinks` below.
  final pulumi.Input<List<EtlEtlSink>> etlSinks;
  /// Log service etl type, the default value is `ETL`.
  final pulumi.Input<String>? etlType;
  /// The start time of the processing job, if not set the value is 0, indicates to start processing from the oldest data.
  final pulumi.Input<int>? fromTime;
  /// An KMS encrypts access key id used to a log etl job. If the `access_key_id` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedAccessKeyId;
  /// An KMS encrypts access key secret used to a log etl job. If the `access_key_secret` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedAccessKeySecret;
  /// An KMS encryption context used to decrypt `kms_encrypted_access_key_id` before creating or updating an instance with `kms_encrypted_access_key_id`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set. When it is changed, the instance will reboot to make the change take effect.
  final pulumi.Input<Map<String, String>>? kmsEncryptionAccessKeyIdContext;
  /// An KMS encryption context used to decrypt `kms_encrypted_access_key_secret` before creating or updating an instance with `kms_encrypted_access_key_secret`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set. When it is changed, the instance will reboot to make the change take effect.
  final pulumi.Input<Map<String, String>>? kmsEncryptionAccessKeySecretContext;
  /// The language of the etl job.
  final pulumi.Input<String>? lang;
  /// ETL job last modified time.
  final pulumi.Input<int>? lastModifiedTime;
  /// The source logstore of the processing job.
  final pulumi.Input<String> logstore;
  /// Advanced parameter configuration of processing operations.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the project where the etl job is located.
  final pulumi.Input<String> project;
  /// Sts role info under source logstore. `role_arn` and `(access_key_id, access_key_secret)` fill in at most one. If you do not fill in both, then you must fill in `(kms_encrypted_access_key_id, kms_encrypted_access_key_secret, kms_encryption_access_key_id_context, kms_encryption_access_key_secret_context)` to use KMS to get the key pair.
  final pulumi.Input<String>? roleArn;
  /// Job scheduling type, the default value is Resident.
  final pulumi.Input<String>? schedule;
  /// Processing operation grammar.
  final pulumi.Input<String> script;
  /// Log project tags. the default value is RUNNING, Only 4 values are supported: `STARTING`，`RUNNING`，`STOPPING`，`STOPPED`.
  final pulumi.Input<String>? status;
  /// Deadline of processing job, if not set the value is 0, indicates that new data will be processed continuously.
  final pulumi.Input<int>? toTime;
  /// Log etl job version. the default value is `2`.
  final pulumi.Input<int>? version;

  /// Creates a new [EtlArgs].
  /// [accessKeyId] Source logstore access key id.
  /// [accessKeySecret] Source logstore access key secret.
  /// [createTime] The etl job create time.
  /// [description] Description of the log etl job.
  /// [displayName] Log service etl job alias.
  /// [etlName] The name of the log etl job.
  /// [etlSinks] Target logstore configuration for delivery after data processing. See `etl_sinks` below.
  /// [etlType] Log service etl type, the default value is `ETL`.
  /// [fromTime] The start time of the processing job, if not set the value is 0, indicates to start processing from the oldest data.
  /// [kmsEncryptedAccessKeyId] An KMS encrypts access key id used to a log etl job. If the `access_key_id` is filled in, this field will be ignored.
  /// [kmsEncryptedAccessKeySecret] An KMS encrypts access key secret used to a log etl job. If the `access_key_secret` is filled in, this field will be ignored.
  /// [kmsEncryptionAccessKeyIdContext] An KMS encryption context used to decrypt `kms_encrypted_access_key_id` before creating or updating an instance with `kms_encrypted_access_key_id`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set. When it is changed, the instance will reboot to make the change take effect.
  /// [kmsEncryptionAccessKeySecretContext] An KMS encryption context used to decrypt `kms_encrypted_access_key_secret` before creating or updating an instance with `kms_encrypted_access_key_secret`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set. When it is changed, the instance will reboot to make the change take effect.
  /// [lang] The language of the etl job.
  /// [lastModifiedTime] ETL job last modified time.
  /// [logstore] The source logstore of the processing job.
  /// [parameters] Advanced parameter configuration of processing operations.
  /// [project] The name of the project where the etl job is located.
  /// [roleArn] Sts role info under source logstore. `role_arn` and `(access_key_id, access_key_secret)` fill in at most one. If you do not fill in both, then you must fill in `(kms_encrypted_access_key_id, kms_encrypted_access_key_secret, kms_encryption_access_key_id_context, kms_encryption_access_key_secret_context)` to use KMS to get the key pair.
  /// [schedule] Job scheduling type, the default value is Resident.
  /// [script] Processing operation grammar.
  /// [status] Log project tags. the default value is RUNNING, Only 4 values are supported: `STARTING`，`RUNNING`，`STOPPING`，`STOPPED`.
  /// [toTime] Deadline of processing job, if not set the value is 0, indicates that new data will be processed continuously.
  /// [version] Log etl job version. the default value is `2`.
  const EtlArgs({
    this.accessKeyId,
    this.accessKeySecret,
    this.createTime,
    this.description,
    required this.displayName,
    required this.etlName,
    required this.etlSinks,
    this.etlType,
    this.fromTime,
    this.kmsEncryptedAccessKeyId,
    this.kmsEncryptedAccessKeySecret,
    this.kmsEncryptionAccessKeyIdContext,
    this.kmsEncryptionAccessKeySecretContext,
    this.lang,
    this.lastModifiedTime,
    required this.logstore,
    this.parameters,
    required this.project,
    this.roleArn,
    this.schedule,
    required this.script,
    this.status,
    this.toTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'accessKeySecret': ?accessKeySecret,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': displayName,
      'etlName': etlName,
      'etlSinks': pulumi.Input.mapInputValue<List<EtlEtlSink>, List<Map<String, dynamic>>>(etlSinks, (value) => pulumi.Input.encodeList<EtlEtlSink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etlType': ?etlType,
      'fromTime': ?fromTime,
      'kmsEncryptedAccessKeyId': ?kmsEncryptedAccessKeyId,
      'kmsEncryptedAccessKeySecret': ?kmsEncryptedAccessKeySecret,
      'kmsEncryptionAccessKeyIdContext': ?kmsEncryptionAccessKeyIdContext,
      'kmsEncryptionAccessKeySecretContext': ?kmsEncryptionAccessKeySecretContext,
      'lang': ?lang,
      'lastModifiedTime': ?lastModifiedTime,
      'logstore': logstore,
      'parameters': ?parameters,
      'project': project,
      'roleArn': ?roleArn,
      'schedule': ?schedule,
      'script': script,
      'status': ?status,
      'toTime': ?toTime,
      'version': ?version,
    };
  }

  factory EtlArgs.fromMap(Map<String, dynamic> map) {
    return EtlArgs(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessKeySecret: (() { final guardedValue = map['accessKeySecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      etlName: pulumi.Input.fromValue(map['etlName'] as String),
      etlSinks: pulumi.Input.fromValue(pulumi.Input.decodeList<EtlEtlSink>(map['etlSinks']!, (value) => EtlEtlSink.fromMap((value as Map).cast<String, dynamic>()))),
      etlType: (() { final guardedValue = map['etlType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromTime: (() { final guardedValue = map['fromTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kmsEncryptedAccessKeyId: (() { final guardedValue = map['kmsEncryptedAccessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsEncryptedAccessKeySecret: (() { final guardedValue = map['kmsEncryptedAccessKeySecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsEncryptionAccessKeyIdContext: (() { final guardedValue = map['kmsEncryptionAccessKeyIdContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      kmsEncryptionAccessKeySecretContext: (() { final guardedValue = map['kmsEncryptionAccessKeySecretContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: pulumi.Input.fromValue(map['project'] as String),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: pulumi.Input.fromValue(map['script'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toTime: (() { final guardedValue = map['toTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

