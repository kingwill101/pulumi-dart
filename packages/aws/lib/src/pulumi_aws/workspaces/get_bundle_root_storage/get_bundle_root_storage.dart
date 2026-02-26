// ignore_for_file: unused_element, unnecessary_cast

class GetBundleRootStorage {
  /// Size of the user storage.
  final String capacity;

  GetBundleRootStorage({
    required this.capacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacity'] = capacity;
    return map;
  }

  factory GetBundleRootStorage.fromMap(Map<String, dynamic> map) {
    return GetBundleRootStorage(
      capacity: map['capacity'] as String,
    );
  }
}
