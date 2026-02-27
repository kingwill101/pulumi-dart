// ignore_for_file: unused_element, unnecessary_cast

import 'method_map.dart';
import 'options_deploymentmanager_alpha.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverride {
  /// The collection that identifies this resource within its service.
  final String? collection;

  /// Custom verb method mappings to support unordered list API mappings.
  final MethodMap? methodMap;

  /// The options to apply to this resource-level override
  final OptionsDeploymentmanagerAlpha? options;

  CollectionOverride({
    this.collection,
    this.methodMap,
    this.options,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionValue = collection;
    if (collectionValue != null) {
      map['collection'] = collectionValue;
    }
    final methodMapValue = methodMap;
    if (methodMapValue != null) {
      map['methodMap'] = methodMapValue.toMap();
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue.toMap();
    }
    return map;
  }

  factory CollectionOverride.fromMap(Map<String, dynamic> map) {
    return CollectionOverride(
      collection:
          map['collection'] == null ? null : map['collection'] as String,
      methodMap: map['methodMap'] == null
          ? null
          : MethodMap.fromMap(
              (map['methodMap'] as Map).cast<String, dynamic>()),
      options: map['options'] == null
          ? null
          : OptionsDeploymentmanagerAlpha.fromMap(
              (map['options'] as Map).cast<String, dynamic>()),
    );
  }
}
