// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_v1_get_analysis_args_doc}
/// Arguments for getAnalysis.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_get_analysis_args_doc}
class GetAnalysisArgs {
  final pulumi.Input<String> analysisId;
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAnalysisArgs].
  /// [analysisId] Required.
  /// [conversationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAnalysisArgs({
    required String analysisId,
    required String conversationId,
    required String location,
    String? project,
  }) : analysisId = pulumi.Input.asInput<String>(analysisId),
       conversationId = pulumi.Input.asInput<String>(conversationId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisId': analysisId,
      'conversationId': conversationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return GetAnalysisArgs(
      analysisId: map['analysisId'] as String,
      conversationId: map['conversationId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
