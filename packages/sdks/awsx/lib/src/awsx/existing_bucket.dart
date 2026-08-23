// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to an existing bucket.
class ExistingBucket {
  /// Arn of the bucket. Only one of [arn] or [name] can be specified.
  final pulumi.Input<String>? arn;
  /// Name of the bucket. Only one of [arn] or [name] can be specified.
  final pulumi.Input<String>? name;

  /// Creates a new [ExistingBucket].
  /// [arn] Arn of the bucket. Only one of [arn] or [name] can be specified.
  /// [name] Name of the bucket. Only one of [arn] or [name] can be specified.
  const ExistingBucket({
    this.arn,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
    };
  }

  factory ExistingBucket.fromMap(Map<String, dynamic> map) {
    return ExistingBucket(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
