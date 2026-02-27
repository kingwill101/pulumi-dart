// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataLabelingJob.
class GetDataLabelingJobArgs {
  final pulumi.Input<String> dataLabelingJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDataLabelingJobArgs({
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

  factory GetDataLabelingJobArgs.fromMap(Map<String, dynamic> map) {
    return GetDataLabelingJobArgs(
      dataLabelingJobId: pulumi.Input.asInput<String>(map['dataLabelingJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
