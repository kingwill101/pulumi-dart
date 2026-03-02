// ignore_for_file: unused_element, unnecessary_cast

import 'connection_setting_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBotConnection.
class GetBotConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Entity Tag.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Required. Gets or sets the Kind of the resource.
  final String? kind;
  /// Specifies the location of the resource.
  final String? location;
  /// The name of the resource
  final String name;
  /// The set of properties specific to bot channel resource
  final ConnectionSettingPropertiesResponse properties;
  /// Gets or sets the SKU of the resource.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Contains resource tags defined as key/value pairs.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Entity zones
  final List<String> zones;

  /// Creates a new [GetBotConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Entity Tag.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] Required. Gets or sets the Kind of the resource.
  /// [location] Specifies the location of the resource.
  /// [name] The name of the resource
  /// [properties] The set of properties specific to bot channel resource
  /// [sku] Gets or sets the SKU of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Contains resource tags defined as key/value pairs.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zones] Entity zones
  GetBotConnectionResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.kind,
    this.location,
    required this.name,
    required this.properties,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zones': zones,
    };
  }

  factory GetBotConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetBotConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      properties: ConnectionSettingPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

