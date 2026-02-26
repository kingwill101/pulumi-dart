// ignore_for_file: unused_element, unnecessary_cast

class InventoryFilter {
  /// Prefix that an object must have to be included in the inventory results.
  final String? prefix;

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
