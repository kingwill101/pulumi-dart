// ignore_for_file: unused_element, unnecessary_cast

/// A collection of object level retention parameters.
class BucketObjectRetentionResponse {
  /// The bucket's object retention mode, can only be Unlocked or Locked.
  final String mode;

  /// A time in RFC 3339 format until which object retention protects this object.
  final String retainUntilTime;

  /// Creates a new [BucketObjectRetentionResponse].
  /// [mode] The bucket's object retention mode, can only be Unlocked or Locked.
  /// [retainUntilTime] A time in RFC 3339 format until which object retention protects this object.
  BucketObjectRetentionResponse({
    required this.mode,
    required this.retainUntilTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode, 'retainUntilTime': retainUntilTime};
  }

  factory BucketObjectRetentionResponse.fromMap(Map<String, dynamic> map) {
    return BucketObjectRetentionResponse(
      mode: map['mode'] as String,
      retainUntilTime: map['retainUntilTime'] as String,
    );
  }
}
