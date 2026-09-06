// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSchemaRegistry.
class GetSchemaRegistryResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Exact time the Schema Group was created.
  final String? createdAtUtc;
  /// The ETag value.
  final String? eTag;
  /// dictionary object for SchemaGroup group properties
  final Map<String, String>? groupProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  final String? schemaCompatibility;
  final String? schemaType;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String? type;
  /// Exact time the Schema Group was updated
  final String? updatedAtUtc;

  /// Creates a new [GetSchemaRegistryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAtUtc] Exact time the Schema Group was created.
  /// [eTag] The ETag value.
  /// [groupProperties] dictionary object for SchemaGroup group properties
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [schemaCompatibility] Optional.
  /// [schemaType] Optional.
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  /// [updatedAtUtc] Exact time the Schema Group was updated
  const GetSchemaRegistryResult({
    this.azureApiVersion,
    this.createdAtUtc,
    this.eTag,
    this.groupProperties,
    this.id,
    this.location,
    this.name,
    this.schemaCompatibility,
    this.schemaType,
    this.systemData,
    this.type,
    this.updatedAtUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdAtUtc': ?createdAtUtc,
      'eTag': ?eTag,
      'groupProperties': ?groupProperties,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'schemaCompatibility': ?schemaCompatibility,
      'schemaType': ?schemaType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'updatedAtUtc': ?updatedAtUtc,
    };
  }

  factory GetSchemaRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaRegistryResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAtUtc: (() { final guardedValue = map['createdAtUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupProperties: (() { final guardedValue = map['groupProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaCompatibility: (() { final guardedValue = map['schemaCompatibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAtUtc: (() { final guardedValue = map['updatedAtUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
