// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_status_response.dart';
import 'dataset_response.dart';
import 'event_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'topic_response.dart';

/// Result data returned by getAsset.
class GetAssetResult {
  /// A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  final String? assetEndpointProfileRef;
  /// A set of key-value pairs that contain custom attributes set by the customer.
  final dynamic attributes;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Array of datasets that are part of the asset. Each dataset describes the data points that make up the set.
  final List<DatasetResponse>? datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  final String? defaultDatasetsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  final String? defaultEventsConfiguration;
  /// Object that describes the default topic information for the asset.
  final TopicResponse? defaultTopic;
  /// Human-readable description of the asset.
  final String? description;
  /// Reference to a list of discovered assets. Populated only if the asset has been created from discovery flow. Discovered asset names must be provided.
  final List<String>? discoveredAssetRefs;
  /// Human-readable display name.
  final String? displayName;
  /// Reference to the documentation.
  final String? documentationUri;
  /// Enabled/Disabled status of the asset.
  final bool? enabled;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final List<EventResponse>? events;
  /// The extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Asset id provided by the customer.
  final String? externalAssetId;
  /// Revision number of the hardware.
  final String? hardwareRevision;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Asset manufacturer name.
  final String? manufacturer;
  /// Asset manufacturer URI.
  final String? manufacturerUri;
  /// Asset model name.
  final String? model;
  /// The name of the resource
  final String? name;
  /// Asset product code.
  final String? productCode;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Asset serial number.
  final String? serialNumber;
  /// Revision number of the software.
  final String? softwareRevision;
  /// Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  final AssetStatusResponse? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Globally unique, immutable, non-reusable id.
  final String? uuid;
  /// An integer that is incremented each time the resource is modified.
  final double? version;

  /// Creates a new [GetAssetResult].
  /// [assetEndpointProfileRef] A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  /// [attributes] A set of key-value pairs that contain custom attributes set by the customer.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [datasets] Array of datasets that are part of the asset. Each dataset describes the data points that make up the set.
  /// [defaultDatasetsConfiguration] Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  /// [defaultEventsConfiguration] Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  /// [defaultTopic] Object that describes the default topic information for the asset.
  /// [description] Human-readable description of the asset.
  /// [discoveredAssetRefs] Reference to a list of discovered assets. Populated only if the asset has been created from discovery flow. Discovered asset names must be provided.
  /// [displayName] Human-readable display name.
  /// [documentationUri] Reference to the documentation.
  /// [enabled] Enabled/Disabled status of the asset.
  /// [events] Array of events that are part of the asset. Each event can have per-event configuration.
  /// [extendedLocation] The extended location.
  /// [externalAssetId] Asset id provided by the customer.
  /// [hardwareRevision] Revision number of the hardware.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [manufacturer] Asset manufacturer name.
  /// [manufacturerUri] Asset manufacturer URI.
  /// [model] Asset model name.
  /// [name] The name of the resource
  /// [productCode] Asset product code.
  /// [provisioningState] Provisioning state of the resource.
  /// [serialNumber] Asset serial number.
  /// [softwareRevision] Revision number of the software.
  /// [status] Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] Globally unique, immutable, non-reusable id.
  /// [version] An integer that is incremented each time the resource is modified.
  const GetAssetResult({
    this.assetEndpointProfileRef,
    this.attributes,
    this.azureApiVersion,
    this.datasets,
    this.defaultDatasetsConfiguration,
    this.defaultEventsConfiguration,
    this.defaultTopic,
    this.description,
    this.discoveredAssetRefs,
    this.displayName,
    this.documentationUri,
    this.enabled,
    this.events,
    this.extendedLocation,
    this.externalAssetId,
    this.hardwareRevision,
    this.id,
    this.location,
    this.manufacturer,
    this.manufacturerUri,
    this.model,
    this.name,
    this.productCode,
    this.provisioningState,
    this.serialNumber,
    this.softwareRevision,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    this.uuid,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetEndpointProfileRef': ?assetEndpointProfileRef,
      'attributes': ?attributes,
      'azureApiVersion': ?azureApiVersion,
      'datasets': ?(() { final guardedValue = datasets; if (guardedValue == null) return null; return pulumi.Input.encodeList<DatasetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultTopic': ?defaultTopic?.toMap(),
      'description': ?description,
      'discoveredAssetRefs': ?discoveredAssetRefs,
      'displayName': ?displayName,
      'documentationUri': ?documentationUri,
      'enabled': ?enabled,
      'events': ?(() { final guardedValue = events; if (guardedValue == null) return null; return pulumi.Input.encodeList<EventResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'extendedLocation': ?extendedLocation?.toMap(),
      'externalAssetId': ?externalAssetId,
      'hardwareRevision': ?hardwareRevision,
      'id': ?id,
      'location': ?location,
      'manufacturer': ?manufacturer,
      'manufacturerUri': ?manufacturerUri,
      'model': ?model,
      'name': ?name,
      'productCode': ?productCode,
      'provisioningState': ?provisioningState,
      'serialNumber': ?serialNumber,
      'softwareRevision': ?softwareRevision,
      'status': ?status?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
      'version': ?version,
    };
  }

  factory GetAssetResult.fromMap(Map<String, dynamic> map) {
    return GetAssetResult(
      assetEndpointProfileRef: (() { final guardedValue = map['assetEndpointProfileRef']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return guardedValue; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datasets: (() { final guardedValue = map['datasets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetResponse>(guardedValue, (value) => DatasetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultDatasetsConfiguration: (() { final guardedValue = map['defaultDatasetsConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultEventsConfiguration: (() { final guardedValue = map['defaultEventsConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultTopic: (() { final guardedValue = map['defaultTopic']; if (guardedValue == null) return null; return TopicResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveredAssetRefs: (() { final guardedValue = map['discoveredAssetRefs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentationUri: (() { final guardedValue = map['documentationUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventResponse>(guardedValue, (value) => EventResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      externalAssetId: (() { final guardedValue = map['externalAssetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hardwareRevision: (() { final guardedValue = map['hardwareRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      manufacturer: (() { final guardedValue = map['manufacturer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      manufacturerUri: (() { final guardedValue = map['manufacturerUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softwareRevision: (() { final guardedValue = map['softwareRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return AssetStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
