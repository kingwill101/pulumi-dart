// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetCreateRequestRegistration {
  /// The description for the dataset.
  final pulumi.Input<String>? description;
  /// The name of the dataset.
  final pulumi.Input<String>? name;
  /// Tags associated with the dataset.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DatasetCreateRequestRegistration].
  /// [description] The description for the dataset.
  /// [name] The name of the dataset.
  /// [tags] Tags associated with the dataset.
  DatasetCreateRequestRegistration({
    this.description,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory DatasetCreateRequestRegistration.fromMap(Map<String, dynamic> map) {
    return DatasetCreateRequestRegistration(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

