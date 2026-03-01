// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'save_or_get_business_process_development_artifact_response_response.dart';

/// Result data returned by listApplicationBusinessProcessDevelopmentArtifacts.
class ListApplicationBusinessProcessDevelopmentArtifactsResult {
  /// The list of the business process development artifact.
  final List<SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse> value;

  /// Creates a new [ListApplicationBusinessProcessDevelopmentArtifactsResult].
  /// [value] The list of the business process development artifact.
  ListApplicationBusinessProcessDevelopmentArtifactsResult({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': pulumi.Input.encodeList<SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListApplicationBusinessProcessDevelopmentArtifactsResult.fromMap(Map<String, dynamic> map) {
    return ListApplicationBusinessProcessDevelopmentArtifactsResult(
      value: pulumi.Input.decodeList<SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse>(map['value'], (value) => SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

