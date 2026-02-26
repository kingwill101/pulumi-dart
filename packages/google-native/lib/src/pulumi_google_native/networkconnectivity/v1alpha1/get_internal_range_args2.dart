// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInternalRange.
class GetInternalRangeArgs2 {
  final Input<String> internalRangeId;
  final Input<String> location;
  final Input<String>? project;

  GetInternalRangeArgs2({
    required this.internalRangeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internalRangeId'] = internalRangeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInternalRangeArgs2.fromMap(Map<String, dynamic> map) {
    return GetInternalRangeArgs2(
      internalRangeId: Input.asInput<String>(map['internalRangeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
