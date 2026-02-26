// ignore_for_file: unused_element, unnecessary_cast

import 'options_response3.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverrideResponse2 {
  /// The collection that identifies this resource within its service.
  final String collection;

  /// The options to apply to this resource-level override
  final OptionsResponse3 options;

  CollectionOverrideResponse2({
    required this.collection,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collection'] = collection;
    map['options'] = options.toMap();
    return map;
  }

  factory CollectionOverrideResponse2.fromMap(Map<String, dynamic> map) {
    return CollectionOverrideResponse2(
      collection: map['collection'] as String,
      options: OptionsResponse3.fromMap(
          (map['options'] as Map).cast<String, dynamic>()),
    );
  }
}
