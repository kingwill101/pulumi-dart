// ignore_for_file: unused_element, unnecessary_cast

class DevEnvironmentPersistentStorage {
  /// The size of the persistent storage in gigabytes (specifically GiB). Valid values for storage are based on memory sizes in 16GB increments. Valid values are 16, 32, and 64.
  final int size;

  /// Creates a new [DevEnvironmentPersistentStorage].
  /// [size] The size of the persistent storage in gigabytes (specifically GiB). Valid values for storage are based on memory sizes in 16GB increments. Valid values are 16, 32, and 64.
  DevEnvironmentPersistentStorage({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['size'] = size;
    return map;
  }

  factory DevEnvironmentPersistentStorage.fromMap(Map<String, dynamic> map) {
    return DevEnvironmentPersistentStorage(
      size: map['size'] as int,
    );
  }
}
