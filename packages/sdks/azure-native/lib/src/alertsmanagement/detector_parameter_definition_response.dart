// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The detector parameter definition.
class DetectorParameterDefinitionResponse {
  /// The detector parameter description.
  final pulumi.Input<String>? description;
  /// The detector parameter display name.
  final pulumi.Input<String>? displayName;
  /// A value indicating whether this detector parameter is mandatory.
  final pulumi.Input<bool>? isMandatory;
  /// The detector parameter name.
  final pulumi.Input<String>? name;
  /// The detector parameter type.
  final pulumi.Input<String>? type;

  /// Creates a new [DetectorParameterDefinitionResponse].
  /// [description] The detector parameter description.
  /// [displayName] The detector parameter display name.
  /// [isMandatory] A value indicating whether this detector parameter is mandatory.
  /// [name] The detector parameter name.
  /// [type] The detector parameter type.
  DetectorParameterDefinitionResponse({
    this.description,
    this.displayName,
    this.isMandatory,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'isMandatory': ?isMandatory,
      'name': ?name,
      'type': ?type,
    };
  }

  factory DetectorParameterDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return DetectorParameterDefinitionResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      isMandatory: map['isMandatory'] == null ? null : (map['isMandatory']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

