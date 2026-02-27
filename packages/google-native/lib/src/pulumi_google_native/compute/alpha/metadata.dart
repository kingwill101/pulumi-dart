// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_items_item.dart';

/// A metadata key/value entry.
class Metadata {
  /// Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  final List<MetadataItemsItem>? items;

  Metadata({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] =
          pulumi.Input.encodeList<MetadataItemsItem, Map<String, dynamic>>(
              itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory Metadata.fromMap(Map<String, dynamic> map) {
    return Metadata(
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<MetadataItemsItem>(
              map['items'],
              (value) => MetadataItemsItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
