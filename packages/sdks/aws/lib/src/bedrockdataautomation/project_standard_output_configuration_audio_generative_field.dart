// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationAudioGenerativeField {
  final pulumi.Input<String> state;
  final pulumi.Input<List<String>?>? types;

  /// Creates a new [ProjectStandardOutputConfigurationAudioGenerativeField].
  /// [state] Required.
  /// [types] Optional.
  const ProjectStandardOutputConfigurationAudioGenerativeField({
    required this.state,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'types': ?types,
    };
  }

  factory ProjectStandardOutputConfigurationAudioGenerativeField.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationAudioGenerativeField(
      state: pulumi.Input.fromValue(map['state'] as String),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
