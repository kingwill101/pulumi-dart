// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectCustomOutputConfigurationDocumentFallbackBlueprint {
  /// ARN of the blueprint.
  final pulumi.Input<String> blueprintArn;
  /// Stage of the blueprint. Valid values: `DEVELOPMENT`, `LIVE`.
  final pulumi.Input<String?>? blueprintStage;
  /// Version of the blueprint.
  final pulumi.Input<String?>? blueprintVersion;

  /// Creates a new [ProjectCustomOutputConfigurationDocumentFallbackBlueprint].
  /// [blueprintArn] ARN of the blueprint.
  /// [blueprintStage] Stage of the blueprint. Valid values: `DEVELOPMENT`, `LIVE`.
  /// [blueprintVersion] Version of the blueprint.
  const ProjectCustomOutputConfigurationDocumentFallbackBlueprint({
    required this.blueprintArn,
    this.blueprintStage,
    this.blueprintVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintArn': blueprintArn,
      'blueprintStage': ?blueprintStage,
      'blueprintVersion': ?blueprintVersion,
    };
  }

  factory ProjectCustomOutputConfigurationDocumentFallbackBlueprint.fromMap(Map<String, dynamic> map) {
    return ProjectCustomOutputConfigurationDocumentFallbackBlueprint(
      blueprintArn: pulumi.Input.fromValue(map['blueprintArn'] as String),
      blueprintStage: (() { final guardedValue = map['blueprintStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blueprintVersion: (() { final guardedValue = map['blueprintVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
