// ignore_for_file: unused_element, unnecessary_cast

class ServiceIntegrationKmsServerSideEncryption {
  /// KMS key ID. This value can be a key ID, key ARN, alias name, or alias ARN.
  final String? kmsKeyId;

  /// Specifies whether KMS integration is enabled. Valid values are `DISABLED` and `ENABLED`.
  final String? optInStatus;

  /// Type of KMS key used. Valid values are `CUSTOMER_MANAGED_KEY` and `AWS_OWNED_KMS_KEY`.
  final String? type;

  ServiceIntegrationKmsServerSideEncryption({
    this.kmsKeyId,
    this.optInStatus,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final optInStatusValue = optInStatus;
    if (optInStatusValue != null) {
      map['optInStatus'] = optInStatusValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ServiceIntegrationKmsServerSideEncryption.fromMap(
      Map<String, dynamic> map) {
    return ServiceIntegrationKmsServerSideEncryption(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      optInStatus:
          map['optInStatus'] == null ? null : map['optInStatus'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
