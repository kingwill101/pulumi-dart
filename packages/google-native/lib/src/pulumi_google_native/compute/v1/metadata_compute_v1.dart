// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_items_item_compute_v1.dart';

/// A metadata key/value entry.
class MetadataComputeV1 {
  /// Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  final List<MetadataItemsItemComputeV1>? items;

  MetadataComputeV1({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = pulumi.Input.encodeList<MetadataItemsItemComputeV1,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MetadataComputeV1.fromMap(Map<String, dynamic> map) {
    return MetadataComputeV1(
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<MetadataItemsItemComputeV1>(
              map['items'],
              (value) => MetadataItemsItemComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
