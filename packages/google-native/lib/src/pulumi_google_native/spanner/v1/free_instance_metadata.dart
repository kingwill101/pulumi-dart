// ignore_for_file: unused_element, unnecessary_cast

import 'free_instance_metadata_expire_behavior.dart';

/// Free instance specific metadata that is kept even after an instance has been upgraded for tracking purposes.
class FreeInstanceMetadata {
  /// Specifies the expiration behavior of a free instance. The default of ExpireBehavior is `REMOVE_AFTER_GRACE_PERIOD`. This can be modified during or after creation, and before expiration.
  final FreeInstanceMetadataExpireBehavior? expireBehavior;

  FreeInstanceMetadata({
    this.expireBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expireBehaviorValue = expireBehavior;
    if (expireBehaviorValue != null) {
      map['expireBehavior'] = expireBehaviorValue.value;
    }
    return map;
  }

  factory FreeInstanceMetadata.fromMap(Map<String, dynamic> map) {
    return FreeInstanceMetadata(
      expireBehavior: map['expireBehavior'] == null
          ? null
          : FreeInstanceMetadataExpireBehavior.fromValue(
              map['expireBehavior'] as String),
    );
  }
}
