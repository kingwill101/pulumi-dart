// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationDocumentOutputFormatTextFormat {
  /// Set of text formats. Valid values: `PLAIN_TEXT`, `MARKDOWN`, `HTML`, `CSV`.
  final pulumi.Input<List<String>?>? types;

  /// Creates a new [ProjectStandardOutputConfigurationDocumentOutputFormatTextFormat].
  /// [types] Set of text formats. Valid values: `PLAIN_TEXT`, `MARKDOWN`, `HTML`, `CSV`.
  const ProjectStandardOutputConfigurationDocumentOutputFormatTextFormat({
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'types': ?types,
    };
  }

  factory ProjectStandardOutputConfigurationDocumentOutputFormatTextFormat.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationDocumentOutputFormatTextFormat(
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
