// ignore_for_file: unused_element, unnecessary_cast


class FirehoseDeliveryStreamServerSideEncryption {
  /// Whether to enable encryption at rest. Default is `false`.
  final bool? enabled;
  /// Amazon Resource Name (ARN) of the encryption key. Required when `key_type` is `CUSTOMER_MANAGED_CMK`.
  final String? keyArn;
  /// Type of encryption key. Default is `AWS_OWNED_CMK`. Valid values are `AWS_OWNED_CMK` and `CUSTOMER_MANAGED_CMK`
  final String? keyType;

  /// Creates a new [FirehoseDeliveryStreamServerSideEncryption].
  /// [enabled] Whether to enable encryption at rest. Default is `false`.
  /// [keyArn] Amazon Resource Name (ARN) of the encryption key. Required when `key_type` is `CUSTOMER_MANAGED_CMK`.
  /// [keyType] Type of encryption key. Default is `AWS_OWNED_CMK`. Valid values are `AWS_OWNED_CMK` and `CUSTOMER_MANAGED_CMK`
  FirehoseDeliveryStreamServerSideEncryption({
    this.enabled,
    this.keyArn,
    this.keyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'keyArn': ?keyArn,
      'keyType': ?keyType,
    };
  }

  factory FirehoseDeliveryStreamServerSideEncryption.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamServerSideEncryption(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      keyArn: map['keyArn'] == null ? null : map['keyArn'] as String,
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
    );
  }
}

