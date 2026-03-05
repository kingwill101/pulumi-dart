// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketMetricFilter {
  /// S3 Access Point ARN for filtering (singular).
  final pulumi.Input<String>? accessPoint;
  /// Object prefix for filtering (singular).
  final pulumi.Input<String>? prefix;
  /// Object tags for filtering (up to 10).
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BucketMetricFilter].
  /// [accessPoint] S3 Access Point ARN for filtering (singular).
  /// [prefix] Object prefix for filtering (singular).
  /// [tags] Object tags for filtering (up to 10).
  BucketMetricFilter({
    this.accessPoint,
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPoint': ?accessPoint,
      'prefix': ?prefix,
      'tags': ?tags,
    };
  }

  factory BucketMetricFilter.fromMap(Map<String, dynamic> map) {
    return BucketMetricFilter(
      accessPoint: (() { final guardedValue = map['accessPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

