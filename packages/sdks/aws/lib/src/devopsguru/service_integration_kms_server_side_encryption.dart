// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceIntegrationKmsServerSideEncryption {
  /// KMS key ID. This value can be a key ID, key ARN, alias name, or alias ARN.
  final pulumi.Input<String>? kmsKeyId;
  /// Specifies whether KMS integration is enabled. Valid values are `DISABLED` and `ENABLED`.
  final pulumi.Input<String>? optInStatus;
  /// Type of KMS key used. Valid values are `CUSTOMER_MANAGED_KEY` and `AWS_OWNED_KMS_KEY`.
  final pulumi.Input<String>? type;

  /// Creates a new [ServiceIntegrationKmsServerSideEncryption].
  /// [kmsKeyId] KMS key ID. This value can be a key ID, key ARN, alias name, or alias ARN.
  /// [optInStatus] Specifies whether KMS integration is enabled. Valid values are `DISABLED` and `ENABLED`.
  /// [type] Type of KMS key used. Valid values are `CUSTOMER_MANAGED_KEY` and `AWS_OWNED_KMS_KEY`.
  ServiceIntegrationKmsServerSideEncryption({
    this.kmsKeyId,
    this.optInStatus,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'optInStatus': ?optInStatus,
      'type': ?type,
    };
  }

  factory ServiceIntegrationKmsServerSideEncryption.fromMap(Map<String, dynamic> map) {
    return ServiceIntegrationKmsServerSideEncryption(
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      optInStatus: map['optInStatus'] == null ? null : ((map['optInStatus'] as String).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

