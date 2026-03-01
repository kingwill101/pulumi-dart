// ignore_for_file: unused_element, unnecessary_cast


/// The snapshots sku name. Can be Standard_LRS, Premium_LRS, or Standard_ZRS. This is an optional parameter for incremental snapshot and the default behavior is the SKU will be set to the same sku as the previous snapshot
class SnapshotSku {
  /// The sku name.
  final String? name;

  /// Creates a new [SnapshotSku].
  /// [name] The sku name.
  SnapshotSku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SnapshotSku.fromMap(Map<String, dynamic> map) {
    return SnapshotSku(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

