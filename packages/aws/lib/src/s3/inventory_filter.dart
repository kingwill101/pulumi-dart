// ignore_for_file: unused_element, unnecessary_cast

class InventoryFilter {
  /// Prefix that an object must have to be included in the inventory results.
  final String? prefix;

  /// Creates a new [InventoryFilter].
  /// [prefix] Prefix that an object must have to be included in the inventory results.
  InventoryFilter({
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory InventoryFilter.fromMap(Map<String, dynamic> map) {
    return InventoryFilter(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
