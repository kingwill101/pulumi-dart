// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCustomJob.
class GetCustomJobAiplatformV1beta1Args {
  final pulumi.Input<String> customJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetCustomJobAiplatformV1beta1Args({
    required this.customJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customJobId'] = customJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCustomJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetCustomJobAiplatformV1beta1Args(
      customJobId: pulumi.Input.asInput<String>(map['customJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
