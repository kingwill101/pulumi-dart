// ignore_for_file: unused_element, unnecessary_cast


class GetStoresStore {
  /// The ID of the store.
  final String id;
  /// The name of the store.
  final String storeName;

  /// Creates a new [GetStoresStore].
  /// [id] The ID of the store.
  /// [storeName] The name of the store.
  GetStoresStore({
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
      id: map['id'] as String,
      storeName: map['storeName'] as String,
    );
  }
}

