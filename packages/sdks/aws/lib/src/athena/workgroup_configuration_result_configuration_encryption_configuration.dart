// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigurationResultConfigurationEncryptionConfiguration {
  /// Whether Amazon S3 server-side encryption with Amazon S3-managed keys (`SSE_S3`), server-side encryption with KMS-managed keys (`SSE_KMS`), or client-side encryption with KMS-managed keys (`CSE_KMS`) is used. If a query runs in a workgroup and the workgroup overrides client-side settings, then the workgroup's setting for encryption is used. It specifies whether query results must be encrypted, for all queries that run in this workgroup.
  final pulumi.Input<String?>? encryptionOption;
  /// For `SSE_KMS` and `CSE_KMS`, this is the KMS key ARN.
  final pulumi.Input<String?>? kmsKeyArn;

  /// Creates a new [WorkgroupConfigurationResultConfigurationEncryptionConfiguration].
  /// [encryptionOption] Whether Amazon S3 server-side encryption with Amazon S3-managed keys (`SSE_S3`), server-side encryption with KMS-managed keys (`SSE_KMS`), or client-side encryption with KMS-managed keys (`CSE_KMS`) is used. If a query runs in a workgroup and the workgroup overrides client-side settings, then the workgroup's setting for encryption is used. It specifies whether query results must be encrypted, for all queries that run in this workgroup.
  /// [kmsKeyArn] For `SSE_KMS` and `CSE_KMS`, this is the KMS key ARN.
  const WorkgroupConfigurationResultConfigurationEncryptionConfiguration({
    this.encryptionOption,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionOption': ?encryptionOption,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory WorkgroupConfigurationResultConfigurationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationResultConfigurationEncryptionConfiguration(
      encryptionOption: (() { final guardedValue = map['encryptionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
