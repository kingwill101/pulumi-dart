// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'substitute_from_definition_response.dart';

/// The postBuild definitions defining variable substitutions for this Kustomization after kustomize build.
class PostBuildDefinitionResponse {
  /// Key/value pairs holding the variables to be substituted in this Kustomization.
  final Map<String, String>? substitute;
  /// Array of ConfigMaps/Secrets from which the variables are substituted for this Kustomization.
  final List<SubstituteFromDefinitionResponse>? substituteFrom;

  /// Creates a new [PostBuildDefinitionResponse].
  /// [substitute] Key/value pairs holding the variables to be substituted in this Kustomization.
  /// [substituteFrom] Array of ConfigMaps/Secrets from which the variables are substituted for this Kustomization.
  PostBuildDefinitionResponse({
    this.substitute,
    this.substituteFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'substitute': ?substitute,
      'substituteFrom': ?substituteFrom == null ? null : pulumi.Input.encodeList<SubstituteFromDefinitionResponse, Map<String, dynamic>>(substituteFrom!, (value) => value.toMap()),
    };
  }

  factory PostBuildDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return PostBuildDefinitionResponse(
      substitute: map['substitute'] == null ? null : (map['substitute'] as Map).cast<String, String>(),
      substituteFrom: map['substituteFrom'] == null ? null : pulumi.Input.decodeList<SubstituteFromDefinitionResponse>(map['substituteFrom'], (value) => SubstituteFromDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

