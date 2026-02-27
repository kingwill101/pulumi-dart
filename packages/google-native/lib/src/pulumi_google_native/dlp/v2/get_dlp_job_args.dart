// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDlpJob.
class GetDlpJobArgs {
  final Input<String> dlpJobId;
  final Input<String> location;
  final Input<String>? project;

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
      dlpJobId: Input.asInput<String>(map['dlpJobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
