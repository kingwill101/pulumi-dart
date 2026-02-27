// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getJob.
class GetJobArgs9 {
  final Input<String> jobId;
  final Input<String>? project;
  final Input<String> tenantId;

  GetJobArgs9({
    required this.jobId,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory GetJobArgs9.fromMap(Map<String, dynamic> map) {
    return GetJobArgs9(
      jobId: Input.asInput<String>(map['jobId']),
      project: Input.asOptionalInput<String>(map['project']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
