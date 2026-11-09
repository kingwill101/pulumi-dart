// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_custom_output_configuration_blueprint.dart';
import 'project_custom_output_configuration_document.dart';

class ProjectCustomOutputConfiguration {
  /// Blueprint to use for custom output. Can be specified multiple times. See `blueprint` and `fallbackBlueprint` Block below.
  final pulumi.Input<List<ProjectCustomOutputConfigurationBlueprint>?>? blueprints;
  /// Custom output settings for documents. See `custom_output_configuration.document` Block below.
  final pulumi.Input<ProjectCustomOutputConfigurationDocument?>? document;

  /// Creates a new [ProjectCustomOutputConfiguration].
  /// [blueprints] Blueprint to use for custom output. Can be specified multiple times. See `blueprint` and `fallbackBlueprint` Block below.
  /// [document] Custom output settings for documents. See `custom_output_configuration.document` Block below.
  const ProjectCustomOutputConfiguration({
    this.blueprints,
    this.document,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprints': ?pulumi.Input.mapOptionalInputValue<List<ProjectCustomOutputConfigurationBlueprint>, List<Map<String, dynamic>>>(blueprints, (value) => pulumi.Input.encodeList<ProjectCustomOutputConfigurationBlueprint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'document': ?pulumi.Input.mapOptionalInputValue<ProjectCustomOutputConfigurationDocument, Map<String, dynamic>>(document, (value) => value.toMap()),
    };
  }

  factory ProjectCustomOutputConfiguration.fromMap(Map<String, dynamic> map) {
    return ProjectCustomOutputConfiguration(
      blueprints: (() { final guardedValue = map['blueprints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectCustomOutputConfigurationBlueprint>(guardedValue, (value) => ProjectCustomOutputConfigurationBlueprint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      document: (() { final guardedValue = map['document']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectCustomOutputConfigurationDocument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
