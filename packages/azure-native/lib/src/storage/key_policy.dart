// ignore_for_file: unused_element, unnecessary_cast


/// KeyPolicy assigned to the storage account.
class KeyPolicy {
  /// The key expiration period in days.
  final int keyExpirationPeriodInDays;

  /// Creates a new [KeyPolicy].
  /// [keyExpirationPeriodInDays] The key expiration period in days.
  KeyPolicy({
    required this.keyExpirationPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyExpirationPeriodInDays': keyExpirationPeriodInDays,
    };
  }

  factory KeyPolicy.fromMap(Map<String, dynamic> map) {
    return KeyPolicy(
      keyExpirationPeriodInDays: map['keyExpirationPeriodInDays'] as int,
    );
  }
}

