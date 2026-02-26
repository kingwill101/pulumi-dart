// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBuckets.
class GetBucketsArgs {
  /// Filter results to buckets whose names begin with this prefix.
  final Input<String>? prefix;

  /// The ID of the project. If it is not provided, the provider project is used.
  final Input<String>? project;

  GetBucketsArgs({
    this.prefix,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBucketsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketsArgs(
      prefix: Input.asOptionalInput<String>(map['prefix']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
