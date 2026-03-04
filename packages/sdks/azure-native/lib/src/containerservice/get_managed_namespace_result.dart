// ignore_for_file: unused_element, unnecessary_cast

import 'namespace_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagedNamespace.
class GetManagedNamespaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  final String eTag;

  /// Resource ID.
  final String id;

  /// The location of the namespace.
  final String? location;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String name;

  /// Properties of a namespace.
  final NamespacePropertiesResponse properties;

  /// The system metadata relating to this resource.
  final SystemDataResponse systemData;

  /// The tags to be persisted on the managed cluster namespace.
  final Map<String, String>? tags;

  /// Resource type
  final String type;

  /// Creates a new [GetManagedNamespaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  /// [id] Resource ID.
  /// [location] The location of the namespace.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [properties] Properties of a namespace.
  /// [systemData] The system metadata relating to this resource.
  /// [tags] The tags to be persisted on the managed cluster namespace.
  /// [type] Resource type
  GetManagedNamespaceResult({
    required this.azureApiVersion,
    required this.eTag,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': eTag,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetManagedNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetManagedNamespaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] as String,
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      properties: NamespacePropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
