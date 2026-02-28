// ignore_for_file: unused_element, unnecessary_cast

class SacRealmPairingKey {
  /// (Output)
  /// Timestamp in UTC of when this resource is considered expired. It expires 7 days after creation.
  final String? expireTime;

  /// (Output)
  /// Key value.
  final String? key;

  /// Creates a new [SacRealmPairingKey].
  /// [expireTime] (Output)
  /// [key] (Output)
  SacRealmPairingKey({
    this.expireTime,
    this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    return map;
  }

  factory SacRealmPairingKey.fromMap(Map<String, dynamic> map) {
    return SacRealmPairingKey(
      expireTime:
          map['expireTime'] == null ? null : map['expireTime'] as String,
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}
