// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getJob.
class GetJobArgs11 {
  final Input<String> jobId;
  final Input<String> namespaceId;

  GetJobArgs11({
    required this.jobId,
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    map['namespaceId'] = namespaceId;
    return map;
  }

  factory GetJobArgs11.fromMap(Map<String, dynamic> map) {
    return GetJobArgs11(
      jobId: Input.asInput<String>(map['jobId']),
      namespaceId: Input.asInput<String>(map['namespaceId']),
    );
  }
}
