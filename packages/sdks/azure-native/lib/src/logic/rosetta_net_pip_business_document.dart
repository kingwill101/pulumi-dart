// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The RosettaNet ProcessConfiguration business document settings.
class RosettaNetPipBusinessDocument {
  /// The business document description.
  final pulumi.Input<String>? description;
  /// The business document name.
  final pulumi.Input<String> name;
  /// The business document version.
  final pulumi.Input<String> version;

  /// Creates a new [RosettaNetPipBusinessDocument].
  /// [description] The business document description.
  /// [name] The business document name.
  /// [version] The business document version.
  RosettaNetPipBusinessDocument({
    this.description,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'version': version,
    };
  }

  factory RosettaNetPipBusinessDocument.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipBusinessDocument(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: (map['name'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

