// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDevEnvironmentPersistentStorage {
  final pulumi.Input<int> size;

  /// Creates a new [GetDevEnvironmentPersistentStorage].
  /// [size] Required.
  const GetDevEnvironmentPersistentStorage({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory GetDevEnvironmentPersistentStorage.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentPersistentStorage(
      size: pulumi.Input.fromValue((map['size'] as num).toInt()),
    );
  }
}
