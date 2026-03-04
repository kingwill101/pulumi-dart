// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBundleUserStorage {
  /// Size of the user storage.
  final pulumi.Input<String> capacity;

  /// Creates a new [GetBundleUserStorage].
  /// [capacity] Size of the user storage.
  GetBundleUserStorage({required this.capacity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'capacity': capacity};
  }

  factory GetBundleUserStorage.fromMap(Map<String, dynamic> map) {
    return GetBundleUserStorage(
      capacity: pulumi.Input.fromValue(map['capacity'] as String),
    );
  }
}
