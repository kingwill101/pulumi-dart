// ignore_for_file: unused_element, unnecessary_cast

/// A collection of object level retention parameters.
class BucketObjectRetention {
  /// The bucket's object retention mode, can only be Unlocked or Locked.
  final String? mode;

  /// A time in RFC 3339 format until which object retention protects this object.
  final String? retainUntilTime;

  /// Creates a new [BucketObjectRetention].
  /// [mode] The bucket's object retention mode, can only be Unlocked or Locked.
  /// [retainUntilTime] A time in RFC 3339 format until which object retention protects this object.
  BucketObjectRetention({
    this.mode,
    this.retainUntilTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final retainUntilTimeValue = retainUntilTime;
    if (retainUntilTimeValue != null) {
      map['retainUntilTime'] = retainUntilTimeValue;
    }
    return map;
  }

  factory BucketObjectRetention.fromMap(Map<String, dynamic> map) {
    return BucketObjectRetention(
      mode: map['mode'] == null ? null : map['mode'] as String,
      retainUntilTime: map['retainUntilTime'] == null
          ? null
          : map['retainUntilTime'] as String,
    );
  }
}
