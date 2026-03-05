// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DevEnvironmentPersistentStorage {
  /// The size of the persistent storage in gigabytes (specifically GiB). Valid values for storage are based on memory sizes in 16GB increments. Valid values are 16, 32, and 64.
  final pulumi.Input<int> size;

  /// Creates a new [DevEnvironmentPersistentStorage].
  /// [size] The size of the persistent storage in gigabytes (specifically GiB). Valid values for storage are based on memory sizes in 16GB increments. Valid values are 16, 32, and 64.
  DevEnvironmentPersistentStorage({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DevEnvironmentPersistentStorage.fromMap(Map<String, dynamic> map) {
    return DevEnvironmentPersistentStorage(
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}

