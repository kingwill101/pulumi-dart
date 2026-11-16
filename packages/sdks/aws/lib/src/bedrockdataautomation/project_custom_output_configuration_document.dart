// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_custom_output_configuration_document_fallback_blueprint.dart';

class ProjectCustomOutputConfigurationDocument {
  /// Blueprint to use when no other blueprint matches a document. Can be specified multiple times. See `blueprint` and `fallbackBlueprint` Block below.
  final pulumi.Input<List<ProjectCustomOutputConfigurationDocumentFallbackBlueprint>?>? fallbackBlueprints;

  /// Creates a new [ProjectCustomOutputConfigurationDocument].
  /// [fallbackBlueprints] Blueprint to use when no other blueprint matches a document. Can be specified multiple times. See `blueprint` and `fallbackBlueprint` Block below.
  const ProjectCustomOutputConfigurationDocument({
    this.fallbackBlueprints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBlueprints': ?pulumi.Input.mapOptionalInputValue<List<ProjectCustomOutputConfigurationDocumentFallbackBlueprint>, List<Map<String, dynamic>>>(fallbackBlueprints, (value) => pulumi.Input.encodeList<ProjectCustomOutputConfigurationDocumentFallbackBlueprint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProjectCustomOutputConfigurationDocument.fromMap(Map<String, dynamic> map) {
    return ProjectCustomOutputConfigurationDocument(
      fallbackBlueprints: (() { final guardedValue = map['fallbackBlueprints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectCustomOutputConfigurationDocumentFallbackBlueprint>(guardedValue, (value) => ProjectCustomOutputConfigurationDocumentFallbackBlueprint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
