// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStoresStore {
  /// The ID of the store.
  final pulumi.Input<String> id;
  /// The name of the store.
  final pulumi.Input<String> storeName;

  /// Creates a new [GetStoresStore].
  /// [id] The ID of the store.
  /// [storeName] The name of the store.
  const GetStoresStore({
    required this.id,
    required this.storeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storeName': storeName,
    };
  }

  factory GetStoresStore.fromMap(Map<String, dynamic> map) {
    return GetStoresStore(
      id: pulumi.Input.fromValue(map['id'] as String),
      storeName: pulumi.Input.fromValue(map['storeName'] as String),
    );
  }
}

