// ignore_for_file: unused_element, unnecessary_cast

class GetDevEnvironmentPersistentStorage {
  final int size;

  /// Creates a new [GetDevEnvironmentPersistentStorage].
  /// [size] Required.
  GetDevEnvironmentPersistentStorage({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['size'] = size;
    return map;
  }

  factory GetDevEnvironmentPersistentStorage.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentPersistentStorage(
      size: map['size'] as int,
    );
  }
}
