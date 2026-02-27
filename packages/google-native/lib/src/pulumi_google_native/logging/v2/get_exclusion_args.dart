// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExclusion.
class GetExclusionArgs {
  final pulumi.Input<String> exclusionId;
  final pulumi.Input<String>? project;

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
      exclusionId: pulumi.Input.asInput<String>(map['exclusionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
