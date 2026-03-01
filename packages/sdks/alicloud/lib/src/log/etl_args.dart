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
  EtlArgs({
    pulumi.Output<String>? accessKeyId,
    pulumi.Output<String>? accessKeySecret,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> etlName,
    required pulumi.Output<List<EtlEtlSink>> etlSinks,
    pulumi.Output<String>? etlType,
    pulumi.Output<int>? fromTime,
    pulumi.Output<String>? kmsEncryptedAccessKeyId,
    pulumi.Output<String>? kmsEncryptedAccessKeySecret,
    pulumi.Output<Map<String, String>>? kmsEncryptionAccessKeyIdContext,
    pulumi.Output<Map<String, String>>? kmsEncryptionAccessKeySecretContext,
    pulumi.Output<String>? lang,
    pulumi.Output<int>? lastModifiedTime,
    required pulumi.Output<String> logstore,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<String> project,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? schedule,
    required pulumi.Output<String> script,
    pulumi.Output<String>? status,
    pulumi.Output<int>? toTime,
    pulumi.Output<int>? version,
  }) :
      accessKeyId = pulumi.Input.asOptionalInput<String>(accessKeyId),
      accessKeySecret = pulumi.Input.asOptionalInput<String>(accessKeySecret),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      etlName = pulumi.Input.asInput<String>(etlName),
      etlSinks = pulumi.Input.asInput<List<EtlEtlSink>>(etlSinks),
      etlType = pulumi.Input.asOptionalInput<String>(etlType),
      fromTime = pulumi.Input.asOptionalInput<int>(fromTime),
      kmsEncryptedAccessKeyId = pulumi.Input.asOptionalInput<String>(kmsEncryptedAccessKeyId),
      kmsEncryptedAccessKeySecret = pulumi.Input.asOptionalInput<String>(kmsEncryptedAccessKeySecret),
      kmsEncryptionAccessKeyIdContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionAccessKeyIdContext),
      kmsEncryptionAccessKeySecretContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionAccessKeySecretContext),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      lastModifiedTime = pulumi.Input.asOptionalInput<int>(lastModifiedTime),
      logstore = pulumi.Input.asInput<String>(logstore),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      project = pulumi.Input.asInput<String>(project),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      script = pulumi.Input.asInput<String>(script),
      status = pulumi.Input.asOptionalInput<String>(status),
      toTime = pulumi.Input.asOptionalInput<int>(toTime),
      version = pulumi.Input.asOptionalInput<int>(version);

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
      accessKeyId: map['accessKeyId'] == null ? null : pulumi.Output.create<String>(map['accessKeyId'] as String),
      accessKeySecret: map['accessKeySecret'] == null ? null : pulumi.Output.create<String>(map['accessKeySecret'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      etlName: pulumi.Output.create<String>(map['etlName'] as String),
      etlSinks: pulumi.Output.create<List<EtlEtlSink>>(pulumi.Input.decodeList<EtlEtlSink>(map['etlSinks'], (value) => EtlEtlSink.fromMap((value as Map).cast<String, dynamic>()))),
      etlType: map['etlType'] == null ? null : pulumi.Output.create<String>(map['etlType'] as String),
      fromTime: map['fromTime'] == null ? null : pulumi.Output.create<int>(map['fromTime'] as int),
      kmsEncryptedAccessKeyId: map['kmsEncryptedAccessKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedAccessKeyId'] as String),
      kmsEncryptedAccessKeySecret: map['kmsEncryptedAccessKeySecret'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedAccessKeySecret'] as String),
      kmsEncryptionAccessKeyIdContext: map['kmsEncryptionAccessKeyIdContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionAccessKeyIdContext'] as Map).cast<String, String>()),
      kmsEncryptionAccessKeySecretContext: map['kmsEncryptionAccessKeySecretContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionAccessKeySecretContext'] as Map).cast<String, String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<int>(map['lastModifiedTime'] as int),
      logstore: pulumi.Output.create<String>(map['logstore'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      project: pulumi.Output.create<String>(map['project'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<String>(map['schedule'] as String),
      script: pulumi.Output.create<String>(map['script'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      toTime: map['toTime'] == null ? null : pulumi.Output.create<int>(map['toTime'] as int),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

