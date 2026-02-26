// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNasJob.
class GetNasJobArgs2 {
  final Input<String> location;
  final Input<String> nasJobId;
  final Input<String>? project;

  GetNasJobArgs2({
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

  factory GetNasJobArgs2.fromMap(Map<String, dynamic> map) {
    return GetNasJobArgs2(
      location: Input.asInput<String>(map['location']),
      nasJobId: Input.asInput<String>(map['nasJobId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
