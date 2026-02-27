// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInternalRange.
class GetInternalRangeArgs {
  final Input<String> internalRangeId;
  final Input<String> location;
  final Input<String>? project;

  GetInternalRangeArgs({
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

  factory GetInternalRangeArgs.fromMap(Map<String, dynamic> map) {
    return GetInternalRangeArgs(
      internalRangeId: Input.asInput<String>(map['internalRangeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
