// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationDocumentExtractionGranularity {
  /// Set of granularity levels. Valid values: `DOCUMENT`, `PAGE`, `ELEMENT`, `WORD`, `LINE`.
  final pulumi.Input<List<String>?>? types;

  /// Creates a new [ProjectStandardOutputConfigurationDocumentExtractionGranularity].
  /// [types] Set of granularity levels. Valid values: `DOCUMENT`, `PAGE`, `ELEMENT`, `WORD`, `LINE`.
  const ProjectStandardOutputConfigurationDocumentExtractionGranularity({
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'types': ?types,
    };
  }

  factory ProjectStandardOutputConfigurationDocumentExtractionGranularity.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationDocumentExtractionGranularity(
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
