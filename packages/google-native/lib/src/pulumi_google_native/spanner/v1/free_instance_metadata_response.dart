// ignore_for_file: unused_element, unnecessary_cast

/// Free instance specific metadata that is kept even after an instance has been upgraded for tracking purposes.
class FreeInstanceMetadataResponse {
  /// Specifies the expiration behavior of a free instance. The default of ExpireBehavior is `REMOVE_AFTER_GRACE_PERIOD`. This can be modified during or after creation, and before expiration.
  final String expireBehavior;

  /// Timestamp after which the instance will either be upgraded or scheduled for deletion after a grace period. ExpireBehavior is used to choose between upgrading or scheduling the free instance for deletion. This timestamp is set during the creation of a free instance.
  final String expireTime;

  /// If present, the timestamp at which the free instance was upgraded to a provisioned instance.
  final String upgradeTime;

  FreeInstanceMetadataResponse({
    required this.expireBehavior,
    required this.expireTime,
    required this.upgradeTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expireBehavior'] = expireBehavior;
    map['expireTime'] = expireTime;
    map['upgradeTime'] = upgradeTime;
    return map;
  }

  factory FreeInstanceMetadataResponse.fromMap(Map<String, dynamic> map) {
    return FreeInstanceMetadataResponse(
      expireBehavior: map['expireBehavior'] as String,
      expireTime: map['expireTime'] as String,
      upgradeTime: map['upgradeTime'] as String,
    );
  }
}
