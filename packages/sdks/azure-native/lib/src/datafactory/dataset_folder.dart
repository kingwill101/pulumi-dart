// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
class DatasetFolder {
  /// The name of the folder that this Dataset is in.
  final pulumi.Input<String>? name;

  /// Creates a new [DatasetFolder].
  /// [name] The name of the folder that this Dataset is in.
  const DatasetFolder({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DatasetFolder.fromMap(Map<String, dynamic> map) {
    return DatasetFolder(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
