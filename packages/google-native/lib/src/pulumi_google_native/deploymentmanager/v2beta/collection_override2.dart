// ignore_for_file: unused_element, unnecessary_cast

import 'options3.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverride2 {
  /// The collection that identifies this resource within its service.
  final String? collection;

  /// The options to apply to this resource-level override
  final Options3? options;

  CollectionOverride2({
    this.collection,
    this.options,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionValue = collection;
    if (collectionValue != null) {
      map['collection'] = collectionValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue.toMap();
    }
    return map;
  }

  factory CollectionOverride2.fromMap(Map<String, dynamic> map) {
    return CollectionOverride2(
      collection:
          map['collection'] == null ? null : map['collection'] as String,
      options: map['options'] == null
          ? null
          : Options3.fromMap((map['options'] as Map).cast<String, dynamic>()),
    );
  }
}
