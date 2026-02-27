// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'metadata_items_item2.dart';

/// A metadata key/value entry.
class Metadata2 {
  /// Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  final List<MetadataItemsItem2>? items;

  Metadata2({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = Input.encodeList<MetadataItemsItem2, Map<String, dynamic>>(
          itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory Metadata2.fromMap(Map<String, dynamic> map) {
    return Metadata2(
      items: map['items'] == null
          ? null
          : Input.decodeList<MetadataItemsItem2>(
              map['items'],
              (value) => MetadataItemsItem2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
