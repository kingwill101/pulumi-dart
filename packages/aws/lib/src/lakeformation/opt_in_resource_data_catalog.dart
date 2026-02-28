// ignore_for_file: unused_element, unnecessary_cast

class OptInResourceDataCatalog {
  /// Identifier for the catalog resource.
  final String? id;

  /// Creates a new [OptInResourceDataCatalog].
  /// [id] Identifier for the catalog resource.
  OptInResourceDataCatalog({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory OptInResourceDataCatalog.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataCatalog(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
