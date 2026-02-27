// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackendBucket.
class GetBackendBucketComputeBetaArgs {
  final pulumi.Input<String> backendBucket;
  final pulumi.Input<String>? project;

  GetBackendBucketComputeBetaArgs({
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

  factory GetBackendBucketComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketComputeBetaArgs(
      backendBucket: pulumi.Input.asInput<String>(map['backendBucket']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
