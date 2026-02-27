// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataLabelingJob.
class GetDataLabelingJobAiplatformV1beta1Args {
  final pulumi.Input<String> dataLabelingJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDataLabelingJobAiplatformV1beta1Args({
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

  factory GetDataLabelingJobAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDataLabelingJobAiplatformV1beta1Args(
      dataLabelingJobId: pulumi.Input.asInput<String>(map['dataLabelingJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
