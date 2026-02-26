// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDataLabelingJob.
class GetDataLabelingJobArgs2 {
  final Input<String> dataLabelingJobId;
  final Input<String> location;
  final Input<String>? project;

  GetDataLabelingJobArgs2({
    required this.dataLabelingJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataLabelingJobId'] = dataLabelingJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataLabelingJobArgs2.fromMap(Map<String, dynamic> map) {
    return GetDataLabelingJobArgs2(
      dataLabelingJobId: Input.asInput<String>(map['dataLabelingJobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
