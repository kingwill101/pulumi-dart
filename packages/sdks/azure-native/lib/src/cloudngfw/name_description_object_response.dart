// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// object type info
class NameDescriptionObjectResponse {
  /// description value
  final pulumi.Input<String>? description;
  /// name value
  final pulumi.Input<String> name;

  /// Creates a new [NameDescriptionObjectResponse].
  /// [description] description value
  /// [name] name value
  NameDescriptionObjectResponse({
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
    };
  }

  factory NameDescriptionObjectResponse.fromMap(Map<String, dynamic> map) {
    return NameDescriptionObjectResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

