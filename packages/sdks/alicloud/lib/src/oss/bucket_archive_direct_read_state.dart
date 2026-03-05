// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketArchiveDirectRead resources.
class BucketArchiveDirectReadState {
  /// The name of the bucket
  final pulumi.Input<String>? bucket;
  /// Specifies whether to enable real-time access of Archive objects for a bucket. Valid values: true and false.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BucketArchiveDirectReadState].
  /// [bucket] The name of the bucket
  /// [enabled] Specifies whether to enable real-time access of Archive objects for a bucket. Valid values: true and false.
  BucketArchiveDirectReadState({
    this.bucket,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'enabled': ?enabled,
    };
  }

  factory BucketArchiveDirectReadState.fromMap(Map<String, dynamic> map) {
    return BucketArchiveDirectReadState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

