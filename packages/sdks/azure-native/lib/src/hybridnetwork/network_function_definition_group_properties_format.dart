// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network function definition group properties.
class NetworkFunctionDefinitionGroupPropertiesFormat {
  /// The network function definition group description.
  final pulumi.Input<String>? description;

  /// Creates a new [NetworkFunctionDefinitionGroupPropertiesFormat].
  /// [description] The network function definition group description.
  NetworkFunctionDefinitionGroupPropertiesFormat({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory NetworkFunctionDefinitionGroupPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionDefinitionGroupPropertiesFormat(
      description: map['description'] == null ? null : (map['description'] as String).input(),
    );
  }
}

