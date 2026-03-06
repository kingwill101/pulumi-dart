// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetCreateRequestDataPath {
  /// The datastore name.
  final pulumi.Input<String>? datastoreName;
  /// Path within the datastore.
  final pulumi.Input<String>? relativePath;

  /// Creates a new [DatasetCreateRequestDataPath].
  /// [datastoreName] The datastore name.
  /// [relativePath] Path within the datastore.
  const DatasetCreateRequestDataPath({
    this.datastoreName,
    this.relativePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreName': ?datastoreName,
      'relativePath': ?relativePath,
    };
  }

  factory DatasetCreateRequestDataPath.fromMap(Map<String, dynamic> map) {
    return DatasetCreateRequestDataPath(
      datastoreName: (() { final guardedValue = map['datastoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

