// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOccurrence.
class GetOccurrenceContaineranalysisV1beta1Args {
  final pulumi.Input<String> occurrenceId;
  final pulumi.Input<String>? project;

  GetOccurrenceContaineranalysisV1beta1Args({
    required this.occurrenceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['occurrenceId'] = occurrenceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetOccurrenceContaineranalysisV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetOccurrenceContaineranalysisV1beta1Args(
      occurrenceId: pulumi.Input.asInput<String>(map['occurrenceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
