// ignore_for_file: unused_element, unnecessary_cast

/// Reference to an existing bucket.
class ExistingBucket {
  /// Arn of the bucket. Only one of [arn] or [name] can be specified.
  final String? arn;

  /// Name of the bucket. Only one of [arn] or [name] can be specified.
  final String? name;

  ExistingBucket({
    this.arn,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ExistingBucket.fromMap(Map<String, dynamic> map) {
    return ExistingBucket(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
