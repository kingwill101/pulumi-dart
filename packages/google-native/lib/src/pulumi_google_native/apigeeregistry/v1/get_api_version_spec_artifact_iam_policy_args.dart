// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getApiVersionSpecArtifactIamPolicy.
class GetApiVersionSpecArtifactIamPolicyArgs {
  final Input<String> apiId;
  final Input<String> artifactId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> specId;
  final Input<String> versionId;

  GetApiVersionSpecArtifactIamPolicyArgs({
    required this.apiId,
    required this.artifactId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.specId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['artifactId'] = artifactId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['specId'] = specId;
    map['versionId'] = versionId;
    return map;
  }

  factory GetApiVersionSpecArtifactIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetApiVersionSpecArtifactIamPolicyArgs(
      apiId: Input.asInput<String>(map['apiId']),
      artifactId: Input.asInput<String>(map['artifactId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      specId: Input.asInput<String>(map['specId']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
