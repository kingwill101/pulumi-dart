// ignore_for_file: unused_element, unnecessary_cast


class BucketTransferAcceleration {
  /// Specifies the accelerate status of a bucket.
  final bool enabled;

  /// Creates a new [BucketTransferAcceleration].
  /// [enabled] Specifies the accelerate status of a bucket.
  BucketTransferAcceleration({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BucketTransferAcceleration.fromMap(Map<String, dynamic> map) {
    return BucketTransferAcceleration(
      enabled: map['enabled'] as bool,
    );
  }
}

