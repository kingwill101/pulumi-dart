// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDlpJob.
class GetDlpJobArgs {
  final pulumi.Input<String> dlpJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDlpJobArgs({
    required this.dlpJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dlpJobId'] = dlpJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDlpJobArgs.fromMap(Map<String, dynamic> map) {
    return GetDlpJobArgs(
      dlpJobId: pulumi.Input.asInput<String>(map['dlpJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
