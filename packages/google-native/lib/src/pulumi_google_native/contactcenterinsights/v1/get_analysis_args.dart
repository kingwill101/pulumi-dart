// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAnalysis.
class GetAnalysisArgs {
  final pulumi.Input<String> analysisId;
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAnalysisArgs({
    required this.analysisId,
    required this.conversationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisId'] = analysisId;
    map['conversationId'] = conversationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return GetAnalysisArgs(
      analysisId: pulumi.Input.asInput<String>(map['analysisId']),
      conversationId: pulumi.Input.asInput<String>(map['conversationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
