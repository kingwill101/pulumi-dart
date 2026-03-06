// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataLake Local Storage details.
class DataLakeLocalStorage {
  /// Volume name to write to.
  final pulumi.Input<String> volumeName;

  /// Creates a new [DataLakeLocalStorage].
  /// [volumeName] Volume name to write to.
  const DataLakeLocalStorage({
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeName': volumeName,
    };
  }

  factory DataLakeLocalStorage.fromMap(Map<String, dynamic> map) {
    return DataLakeLocalStorage(
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}

