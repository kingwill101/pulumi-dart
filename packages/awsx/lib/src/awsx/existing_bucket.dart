// ignore_for_file: unused_element, unnecessary_cast

/// Reference to an existing bucket.
class ExistingBucket {
  /// Arn of the bucket. Only one of [arn] or [name] can be specified.
  final String? arn;

  /// Name of the bucket. Only one of [arn] or [name] can be specified.
  final String? name;

  /// Creates a new [ExistingBucket].
  /// [arn] Arn of the bucket. Only one of [arn] or [name] can be specified.
  /// [name] Name of the bucket. Only one of [arn] or [name] can be specified.
  ExistingBucket({this.arn, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn, 'name': ?name};
  }

  factory ExistingBucket.fromMap(Map<String, dynamic> map) {
    return ExistingBucket(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
