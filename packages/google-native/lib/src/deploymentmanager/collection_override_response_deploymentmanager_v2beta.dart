// ignore_for_file: unused_element, unnecessary_cast

import 'options_response_deploymentmanager_v2beta.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverrideResponseDeploymentmanagerV2beta {
  /// The collection that identifies this resource within its service.
  final String collection;

  /// The options to apply to this resource-level override
  final OptionsResponseDeploymentmanagerV2beta options;

  /// Creates a new [CollectionOverrideResponseDeploymentmanagerV2beta].
  /// [collection] The collection that identifies this resource within its service.
  /// [options] The options to apply to this resource-level override
  CollectionOverrideResponseDeploymentmanagerV2beta({
    required this.collection,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collection'] = collection;
    map['options'] = options.toMap();
    return map;
  }

  factory CollectionOverrideResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return CollectionOverrideResponseDeploymentmanagerV2beta(
      collection: map['collection'] as String,
      options: OptionsResponseDeploymentmanagerV2beta.fromMap(
          (map['options'] as Map).cast<String, dynamic>()),
    );
  }
}
