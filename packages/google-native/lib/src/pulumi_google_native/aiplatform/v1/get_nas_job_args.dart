// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNasJob.
class GetNasJobArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nasJobId;
  final pulumi.Input<String>? project;

  GetNasJobArgs({
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

  factory GetNasJobArgs.fromMap(Map<String, dynamic> map) {
    return GetNasJobArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      nasJobId: pulumi.Input.asInput<String>(map['nasJobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
