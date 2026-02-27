// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNasJob.
class GetNasJobAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nasJobId;
  final pulumi.Input<String>? project;

  GetNasJobAiplatformV1beta1Args({
    required this.location,
    required this.nasJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['nasJobId'] = nasJobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNasJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNasJobAiplatformV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      nasJobId: pulumi.Input.asInput<String>(map['nasJobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
