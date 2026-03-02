// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InventoryFilter {
  /// Prefix that an object must have to be included in the inventory results.
  final pulumi.Input<String>? prefix;

  /// Creates a new [InventoryFilter].
  /// [prefix] Prefix that an object must have to be included in the inventory results.
  InventoryFilter({
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
    };
  }

  factory InventoryFilter.fromMap(Map<String, dynamic> map) {
    return InventoryFilter(
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
    );
  }
}

