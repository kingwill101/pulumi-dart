// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketTransferAcceleration {
  /// Specifies the accelerate status of a bucket.
  final pulumi.Input<bool> enabled;

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
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

