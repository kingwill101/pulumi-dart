// ignore_for_file: unused_element, unnecessary_cast

class GetBundleUserStorage {
  /// Size of the user storage.
  final String capacity;

  /// Creates a new [GetBundleUserStorage].
  /// [capacity] Size of the user storage.
  GetBundleUserStorage({
    required this.capacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacity'] = capacity;
    return map;
  }

  factory GetBundleUserStorage.fromMap(Map<String, dynamic> map) {
    return GetBundleUserStorage(
      capacity: map['capacity'] as String,
    );
  }
}
