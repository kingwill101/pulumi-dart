// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_items_item_compute_beta.dart';

/// A metadata key/value entry.
class MetadataComputeBeta {
  /// Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  final List<MetadataItemsItemComputeBeta>? items;

  /// Creates a new [MetadataComputeBeta].
  /// [items] Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  MetadataComputeBeta({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items == null
          ? null
          : pulumi.Input.encodeList<
              MetadataItemsItemComputeBeta,
              Map<String, dynamic>
            >(items!, (value) => value.toMap()),
    };
  }

  factory MetadataComputeBeta.fromMap(Map<String, dynamic> map) {
    return MetadataComputeBeta(
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<MetadataItemsItemComputeBeta>(
              map['items'],
              (value) => MetadataItemsItemComputeBeta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
