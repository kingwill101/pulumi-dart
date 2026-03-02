// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'etl_etl_sink.dart';

/// Input properties used for looking up and filtering Etl resources.
class EtlState {
  /// Source logstore access key id.
  final pulumi.Input<String>? accessKeyId;
  /// Source logstore access key secret.
  final pulumi.Input<String>? accessKeySecret;
  /// The etl job create time.
  final pulumi.Input<int>? createTime;
  /// Description of the log etl job.
  final pulumi.Input<String>? description;
  /// Log service etl job alias.
  final pulumi.Input<String>? displayName;
  /// The name of the log etl job.
  final pulumi.Input<String>? etlName;
  /// Target logstore configuration for delivery after data processing. See `etl_sinks` below.
  final pulumi.Input<List<EtlEtlSink>>? etlSinks;
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
  final pulumi.Input<String>? logstore;
  /// Advanced parameter configuration of processing operations.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the project where the etl job is located.
  final pulumi.Input<String>? project;
  /// Sts role info under source logstore. `role_arn` and `(access_key_id, access_key_secret)` fill in at most one. If you do not fill in both, then you must fill in `(kms_encrypted_access_key_id, kms_encrypted_access_key_secret, kms_encryption_access_key_id_context, kms_encryption_access_key_secret_context)` to use KMS to get the key pair.
  final pulumi.Input<String>? roleArn;
  /// Job scheduling type, the default value is Resident.
  final pulumi.Input<String>? schedule;
  /// Processing operation grammar.
  final pulumi.Input<String>? script;
  /// Log project tags. the default value is RUNNING, Only 4 values are supported: `STARTING`，`RUNNING`，`STOPPING`，`STOPPED`.
  final pulumi.Input<String>? status;
  /// Deadline of processing job, if not set the value is 0, indicates that new data will be processed continuously.
  final pulumi.Input<int>? toTime;
  /// Log etl job version. the default value is `2`.
  final pulumi.Input<int>? version;

  /// Creates a new [EtlState].
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
  EtlState({
    this.accessKeyId,
    this.accessKeySecret,
    this.createTime,
    this.description,
    this.displayName,
    this.etlName,
    this.etlSinks,
    this.etlType,
    this.fromTime,
    this.kmsEncryptedAccessKeyId,
    this.kmsEncryptedAccessKeySecret,
    this.kmsEncryptionAccessKeyIdContext,
    this.kmsEncryptionAccessKeySecretContext,
    this.lang,
    this.lastModifiedTime,
    this.logstore,
    this.parameters,
    this.project,
    this.roleArn,
    this.schedule,
    this.script,
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
      'displayName': ?displayName,
      'etlName': ?etlName,
      'etlSinks': ?pulumi.Input.mapOptionalInputValue<List<EtlEtlSink>, List<Map<String, dynamic>>>(etlSinks, (value) => pulumi.Input.encodeList<EtlEtlSink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etlType': ?etlType,
      'fromTime': ?fromTime,
      'kmsEncryptedAccessKeyId': ?kmsEncryptedAccessKeyId,
      'kmsEncryptedAccessKeySecret': ?kmsEncryptedAccessKeySecret,
      'kmsEncryptionAccessKeyIdContext': ?kmsEncryptionAccessKeyIdContext,
      'kmsEncryptionAccessKeySecretContext': ?kmsEncryptionAccessKeySecretContext,
      'lang': ?lang,
      'lastModifiedTime': ?lastModifiedTime,
      'logstore': ?logstore,
      'parameters': ?parameters,
      'project': ?project,
      'roleArn': ?roleArn,
      'schedule': ?schedule,
      'script': ?script,
      'status': ?status,
      'toTime': ?toTime,
      'version': ?version,
    };
  }

  factory EtlState.fromMap(Map<String, dynamic> map) {
    return EtlState(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId'] as String).input(),
      accessKeySecret: map['accessKeySecret'] == null ? null : (map['accessKeySecret'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      etlName: map['etlName'] == null ? null : (map['etlName'] as String).input(),
      etlSinks: map['etlSinks'] == null ? null : (pulumi.Input.decodeList<EtlEtlSink>(map['etlSinks'], (value) => EtlEtlSink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etlType: map['etlType'] == null ? null : (map['etlType'] as String).input(),
      fromTime: map['fromTime'] == null ? null : (map['fromTime'] as int).input(),
      kmsEncryptedAccessKeyId: map['kmsEncryptedAccessKeyId'] == null ? null : (map['kmsEncryptedAccessKeyId'] as String).input(),
      kmsEncryptedAccessKeySecret: map['kmsEncryptedAccessKeySecret'] == null ? null : (map['kmsEncryptedAccessKeySecret'] as String).input(),
      kmsEncryptionAccessKeyIdContext: map['kmsEncryptionAccessKeyIdContext'] == null ? null : ((map['kmsEncryptionAccessKeyIdContext'] as Map).cast<String, String>()).input(),
      kmsEncryptionAccessKeySecretContext: map['kmsEncryptionAccessKeySecretContext'] == null ? null : ((map['kmsEncryptionAccessKeySecretContext'] as Map).cast<String, String>()).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as int).input(),
      logstore: map['logstore'] == null ? null : (map['logstore'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      schedule: map['schedule'] == null ? null : (map['schedule'] as String).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      toTime: map['toTime'] == null ? null : (map['toTime'] as int).input(),
      version: map['version'] == null ? null : (map['version'] as int).input(),
    );
  }
}

