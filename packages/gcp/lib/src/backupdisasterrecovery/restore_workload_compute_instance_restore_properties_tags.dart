// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesTags {
  /// (Optional)
  final List<String>? items;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesTags].
  /// [items] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesTags({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesTags.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesTags(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
