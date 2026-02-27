// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBackendBucket.
class GetBackendBucketArgs {
  final Input<String> backendBucket;
  final Input<String>? project;

  GetBackendBucketArgs({
    required this.backendBucket,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendBucket'] = backendBucket;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackendBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketArgs(
      backendBucket: Input.asInput<String>(map['backendBucket']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
