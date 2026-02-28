// ignore_for_file: unused_element, unnecessary_cast

class GetBucketObjectRetention {
  /// The object retention mode. Supported values include: "Unlocked", "Locked".
  final String mode;

  /// Time in RFC 3339 (e.g. 2030-01-01T02:03:04Z) until which object retention protects this object.
  final String retainUntilTime;

  /// Creates a new [GetBucketObjectRetention].
  /// [mode] The object retention mode. Supported values include: "Unlocked", "Locked".
  /// [retainUntilTime] Time in RFC 3339 (e.g. 2030-01-01T02:03:04Z) until which object retention protects this object.
  GetBucketObjectRetention({
    required this.mode,
    required this.retainUntilTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    map['retainUntilTime'] = retainUntilTime;
    return map;
  }

  factory GetBucketObjectRetention.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectRetention(
      mode: map['mode'] as String,
      retainUntilTime: map['retainUntilTime'] as String,
    );
  }
}
