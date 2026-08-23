// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataset reference object.
class DatasetReference {
  /// The fully qualified ARM id of the dataset reference.
  final pulumi.Input<String>? id;
  /// The name of the dataset reference.
  final pulumi.Input<String>? name;

  /// Creates a new [DatasetReference].
  /// [id] The fully qualified ARM id of the dataset reference.
  /// [name] The name of the dataset reference.
  const DatasetReference({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory DatasetReference.fromMap(Map<String, dynamic> map) {
    return DatasetReference(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
