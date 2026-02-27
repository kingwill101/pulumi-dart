// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getExclusion.
class GetExclusionArgs {
  final Input<String> exclusionId;
  final Input<String>? project;

  GetExclusionArgs({
    required this.exclusionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusionId'] = exclusionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetExclusionArgs(
      exclusionId: Input.asInput<String>(map['exclusionId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
