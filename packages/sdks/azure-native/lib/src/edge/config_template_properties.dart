// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config Template Properties
class ConfigTemplateProperties {
  /// Description of config template
  final pulumi.Input<String> description;

  /// Creates a new [ConfigTemplateProperties].
  /// [description] Description of config template
  ConfigTemplateProperties({
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
    };
  }

  factory ConfigTemplateProperties.fromMap(Map<String, dynamic> map) {
    return ConfigTemplateProperties(
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}

