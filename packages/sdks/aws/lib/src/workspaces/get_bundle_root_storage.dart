// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBundleRootStorage {
  /// Size of the user storage.
  final pulumi.Input<String> capacity;

  /// Creates a new [GetBundleRootStorage].
  /// [capacity] Size of the user storage.
  GetBundleRootStorage({
    required this.capacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
    };
  }

  factory GetBundleRootStorage.fromMap(Map<String, dynamic> map) {
    return GetBundleRootStorage(
      capacity: (map['capacity'] as String).input(),
    );
  }
}

