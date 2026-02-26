// ignore_for_file: unused_element, unnecessary_cast

import 'method_map_response.dart';
import 'options_response2.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverrideResponse {
  /// The collection that identifies this resource within its service.
  final String collection;

  /// Custom verb method mappings to support unordered list API mappings.
  final MethodMapResponse methodMap;

  /// The options to apply to this resource-level override
  final OptionsResponse2 options;

  CollectionOverrideResponse({
    required this.collection,
    required this.methodMap,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collection'] = collection;
    map['methodMap'] = methodMap.toMap();
    map['options'] = options.toMap();
    return map;
  }

  factory CollectionOverrideResponse.fromMap(Map<String, dynamic> map) {
    return CollectionOverrideResponse(
      collection: map['collection'] as String,
      methodMap: MethodMapResponse.fromMap(
          (map['methodMap'] as Map).cast<String, dynamic>()),
      options: OptionsResponse2.fromMap(
          (map['options'] as Map).cast<String, dynamic>()),
    );
  }
}
