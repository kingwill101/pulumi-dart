// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EtlEtlSink {
  /// Delivery target logstore access key id.
  final pulumi.Input<String>? accessKeyId;
  /// Delivery target logstore access key secret.
  final pulumi.Input<String>? accessKeySecret;
  /// LogETL datasets.
  ///
  /// > **Note:** `from_time` and `to_time` no modification allowed after successful creation.
  final pulumi.Input<List<String>>? datasets;
  /// Delivery target logstore region.
  final pulumi.Input<String> endpoint;
  /// An KMS encrypts access key id used to a log etl job. If the `access_key_id` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedAccessKeyId;
  /// An KMS encrypts access key secret used to a log etl job. If the `access_key_secret` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedAccessKeySecret;
  /// Delivery target logstore.
  final pulumi.Input<String> logstore;
  /// Delivery target name.
  final pulumi.Input<String> name;
  /// The project where the target logstore is delivered.
  final pulumi.Input<String> project;
  /// Sts role info under delivery target logstore. `role_arn` and `(access_key_id, access_key_secret)` fill in at most one. If you do not fill in both, then you must fill in `(kms_encrypted_access_key_id, kms_encrypted_access_key_secret)` to use KMS to get the key pair.
  final pulumi.Input<String>? roleArn;
  /// ETL sinks type, the default value is AliyunLOG.
  final pulumi.Input<String>? type;

  /// Creates a new [EtlEtlSink].
  /// [accessKeyId] Delivery target logstore access key id.
  /// [accessKeySecret] Delivery target logstore access key secret.
  /// [datasets] LogETL datasets.
  /// [endpoint] Delivery target logstore region.
  /// [kmsEncryptedAccessKeyId] An KMS encrypts access key id used to a log etl job. If the `access_key_id` is filled in, this field will be ignored.
  /// [kmsEncryptedAccessKeySecret] An KMS encrypts access key secret used to a log etl job. If the `access_key_secret` is filled in, this field will be ignored.
  /// [logstore] Delivery target logstore.
  /// [name] Delivery target name.
  /// [project] The project where the target logstore is delivered.
  /// [roleArn] Sts role info under delivery target logstore. `role_arn` and `(access_key_id, access_key_secret)` fill in at most one. If you do not fill in both, then you must fill in `(kms_encrypted_access_key_id, kms_encrypted_access_key_secret)` to use KMS to get the key pair.
  /// [type] ETL sinks type, the default value is AliyunLOG.
  EtlEtlSink({
    this.accessKeyId,
    this.accessKeySecret,
    this.datasets,
    required this.endpoint,
    this.kmsEncryptedAccessKeyId,
    this.kmsEncryptedAccessKeySecret,
    required this.logstore,
    required this.name,
    required this.project,
    this.roleArn,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'accessKeySecret': ?accessKeySecret,
      'datasets': ?datasets,
      'endpoint': endpoint,
      'kmsEncryptedAccessKeyId': ?kmsEncryptedAccessKeyId,
      'kmsEncryptedAccessKeySecret': ?kmsEncryptedAccessKeySecret,
      'logstore': logstore,
      'name': name,
      'project': project,
      'roleArn': ?roleArn,
      'type': ?type,
    };
  }

  factory EtlEtlSink.fromMap(Map<String, dynamic> map) {
    return EtlEtlSink(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId']! as String).input(),
      accessKeySecret: map['accessKeySecret'] == null ? null : (map['accessKeySecret']! as String).input(),
      datasets: map['datasets'] == null ? null : ((map['datasets']! as List).cast<String>()).input(),
      endpoint: (map['endpoint'] as String).input(),
      kmsEncryptedAccessKeyId: map['kmsEncryptedAccessKeyId'] == null ? null : (map['kmsEncryptedAccessKeyId']! as String).input(),
      kmsEncryptedAccessKeySecret: map['kmsEncryptedAccessKeySecret'] == null ? null : (map['kmsEncryptedAccessKeySecret']! as String).input(),
      logstore: (map['logstore'] as String).input(),
      name: (map['name'] as String).input(),
      project: (map['project'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

