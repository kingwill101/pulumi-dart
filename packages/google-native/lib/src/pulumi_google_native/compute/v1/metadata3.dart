// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'metadata_items_item3.dart';

/// A metadata key/value entry.
class Metadata3 {
  /// Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  final List<MetadataItemsItem3>? items;

  Metadata3({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = Input.encodeList<MetadataItemsItem3, Map<String, dynamic>>(
          itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory Metadata3.fromMap(Map<String, dynamic> map) {
    return Metadata3(
      items: map['items'] == null
          ? null
          : Input.decodeList<MetadataItemsItem3>(
              map['items'],
              (value) => MetadataItemsItem3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
