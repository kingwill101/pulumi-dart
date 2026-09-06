// ignore_for_file: unused_element, unnecessary_cast

import 'channel_settings_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by listChannelWithKeys.
class ListChannelWithKeysResult {
  /// Changed time of the resource
  final String? changedTime;
  /// Entity tag of the resource
  final String? entityTag;
  /// Entity Tag.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Required. Gets or sets the Kind of the resource.
  final String? kind;
  /// Specifies the location of the resource.
  final String? location;
  /// The name of the resource
  final String? name;
  /// The set of properties specific to bot channel resource
  final dynamic properties;
  /// Provisioning state of the resource
  final String? provisioningState;
  /// The set of properties specific to bot channel resource
  final dynamic resource;
  /// Channel settings
  final ChannelSettingsResponse? setting;
  /// Gets or sets the SKU of the resource.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Contains resource tags defined as key/value pairs.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Entity zones
  final List<String>? zones;

  /// Creates a new [ListChannelWithKeysResult].
  /// [changedTime] Changed time of the resource
  /// [entityTag] Entity tag of the resource
  /// [etag] Entity Tag.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] Required. Gets or sets the Kind of the resource.
  /// [location] Specifies the location of the resource.
  /// [name] The name of the resource
  /// [properties] The set of properties specific to bot channel resource
  /// [provisioningState] Provisioning state of the resource
  /// [resource] The set of properties specific to bot channel resource
  /// [setting] Channel settings
  /// [sku] Gets or sets the SKU of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Contains resource tags defined as key/value pairs.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zones] Entity zones
  const ListChannelWithKeysResult({
    this.changedTime,
    this.entityTag,
    this.etag,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.properties,
    this.provisioningState,
    this.resource,
    this.setting,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changedTime': ?changedTime,
      'entityTag': ?entityTag,
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'properties': ?properties,
      'provisioningState': ?provisioningState,
      'resource': ?resource,
      'setting': ?setting?.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'zones': ?zones,
    };
  }

  factory ListChannelWithKeysResult.fromMap(Map<String, dynamic> map) {
    return ListChannelWithKeysResult(
      changedTime: (() { final guardedValue = map['changedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityTag: (() { final guardedValue = map['entityTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return guardedValue; })(),
      setting: (() { final guardedValue = map['setting']; if (guardedValue == null) return null; return ChannelSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
