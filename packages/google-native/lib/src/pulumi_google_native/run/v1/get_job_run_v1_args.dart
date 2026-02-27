// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJob.
class GetJobRunV1Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> namespaceId;

  GetJobRunV1Args({
    required this.jobId,
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    map['namespaceId'] = namespaceId;
    return map;
  }

  factory GetJobRunV1Args.fromMap(Map<String, dynamic> map) {
    return GetJobRunV1Args(
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      namespaceId: pulumi.Input.asInput<String>(map['namespaceId']),
    );
  }
}
