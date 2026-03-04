// ignore_for_file: unused_element, unnecessary_cast

import 'acs_chat_channel_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getChannel.
class GetChannelResult {
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
  final AcsChatChannelResponse properties;

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

  /// Creates a new [GetChannelResult].
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
  GetChannelResult({
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
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zones': zones,
    };
  }

  factory GetChannelResult.fromMap(Map<String, dynamic> map) {
    return GetChannelResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      properties: AcsChatChannelResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
