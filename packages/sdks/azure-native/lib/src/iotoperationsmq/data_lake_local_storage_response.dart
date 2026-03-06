// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataLake Local Storage details.
class DataLakeLocalStorageResponse {
  /// Volume name to write to.
  final pulumi.Input<String> volumeName;

  /// Creates a new [DataLakeLocalStorageResponse].
  /// [volumeName] Volume name to write to.
  const DataLakeLocalStorageResponse({
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeName': volumeName,
    };
  }

  factory DataLakeLocalStorageResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeLocalStorageResponse(
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}

