// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_annotator_selector.dart';

/// The set of arguments for Analysis.
class AnalysisArgs {
  /// To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotatorSelector>?
      annotatorSelector;
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String>? location;

  /// Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  AnalysisArgs({
    this.annotatorSelector,
    required this.conversationId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotatorSelectorValue = annotatorSelector;
    if (annotatorSelectorValue != null) {
      map['annotatorSelector'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudContactcenterinsightsV1AnnotatorSelector,
              Map<String, dynamic>>(
          annotatorSelectorValue, (value) => value.toMap());
    }
    map['conversationId'] = conversationId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AnalysisArgs.fromMap(Map<String, dynamic> map) {
    return AnalysisArgs(
      annotatorSelector: pulumi.Input.asOptionalInput<
              GoogleCloudContactcenterinsightsV1AnnotatorSelector>(
          map['annotatorSelector']),
      conversationId: pulumi.Input.asInput<String>(map['conversationId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
