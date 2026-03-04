// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'substitute_from_definition.dart';

/// The postBuild definitions defining variable substitutions for this Kustomization after kustomize build.
class PostBuildDefinition {
  /// Key/value pairs holding the variables to be substituted in this Kustomization.
  final pulumi.Input<Map<String, String>>? substitute;

  /// Array of ConfigMaps/Secrets from which the variables are substituted for this Kustomization.
  final pulumi.Input<List<SubstituteFromDefinition>>? substituteFrom;

  /// Creates a new [PostBuildDefinition].
  /// [substitute] Key/value pairs holding the variables to be substituted in this Kustomization.
  /// [substituteFrom] Array of ConfigMaps/Secrets from which the variables are substituted for this Kustomization.
  PostBuildDefinition({this.substitute, this.substituteFrom});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'substitute': ?substitute,
      'substituteFrom':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubstituteFromDefinition>,
            List<Map<String, dynamic>>
          >(
            substituteFrom,
            (value) =>
                pulumi.Input.encodeList<
                  SubstituteFromDefinition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PostBuildDefinition.fromMap(Map<String, dynamic> map) {
    return PostBuildDefinition(
      substitute: (() {
        final guardedValue = map['substitute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      substituteFrom: (() {
        final guardedValue = map['substituteFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubstituteFromDefinition>(
            guardedValue,
            (value) => SubstituteFromDefinition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
