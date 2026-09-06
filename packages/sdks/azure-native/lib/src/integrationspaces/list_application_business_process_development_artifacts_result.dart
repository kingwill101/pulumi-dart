// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'save_or_get_business_process_development_artifact_response_response.dart';

/// Result data returned by listApplicationBusinessProcessDevelopmentArtifacts.
class ListApplicationBusinessProcessDevelopmentArtifactsResult {
  /// The list of the business process development artifact.
  final List<SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse>? value;

  /// Creates a new [ListApplicationBusinessProcessDevelopmentArtifactsResult].
  /// [value] The list of the business process development artifact.
  const ListApplicationBusinessProcessDevelopmentArtifactsResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListApplicationBusinessProcessDevelopmentArtifactsResult.fromMap(Map<String, dynamic> map) {
    return ListApplicationBusinessProcessDevelopmentArtifactsResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse>(guardedValue, (value) => SaveOrGetBusinessProcessDevelopmentArtifactResponseResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
