// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_broker_state_store_destination_response.dart';
import 'device_ref_response.dart';
import 'event_mqtt_destination_response.dart';
import 'extended_location_response.dart';
import 'management_group_response.dart';
import 'namespace_asset_status_response.dart';
import 'namespace_dataset_response.dart';
import 'namespace_event_response.dart';
import 'namespace_stream_response.dart';
import 'stream_mqtt_destination_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespaceAsset.
class GetNamespaceAssetResult {
  /// URIs or type definition IDs.
  final List<String>? assetTypeRefs;
  /// A set of key-value pairs that contain custom attributes set by the customer.
  final dynamic attributes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Array of datasets that are part of the asset. Each dataset describes the data points that make up the set.
  final List<NamespaceDatasetResponse>? datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  final String? defaultDatasetsConfiguration;
  /// Default destinations for a dataset.
  final List<DatasetBrokerStateStoreDestinationResponse>? defaultDatasetsDestinations;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  final String? defaultEventsConfiguration;
  /// Default destinations for an event.
  final List<EventMqttDestinationResponse>? defaultEventsDestinations;
  /// Stringified JSON that contains connector-specific default configuration for all management groups. Each management group can have its own configuration that overrides the default settings here.
  final String? defaultManagementGroupsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all streams. Each stream can have its own configuration that overrides the default settings here.
  final String? defaultStreamsConfiguration;
  /// Default destinations for a stream.
  final List<StreamMqttDestinationResponse>? defaultStreamsDestinations;
  /// Human-readable description of the asset.
  final String? description;
  /// Reference to the device that provides data for this asset. Must provide device name & endpoint on the device to use.
  final DeviceRefResponse deviceRef;
  /// Reference to a list of discovered assets. Populated only if the asset has been created from discovery flow. Discovered asset names must be provided.
  final List<String>? discoveredAssetRefs;
  /// Human-readable display name.
  final String? displayName;
  /// Asset documentation reference.
  final String? documentationUri;
  /// Enabled/disabled status of the asset.
  final bool? enabled;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final List<NamespaceEventResponse>? events;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// Asset ID provided by the customer.
  final String? externalAssetId;
  /// Asset hardware revision number.
  final String? hardwareRevision;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// A timestamp (in UTC) that is updated each time the resource is modified.
  final String lastTransitionTime;
  /// The geo-location where the resource lives
  final String location;
  /// Array of management groups that are part of the asset. Each management group can have a per-group configuration.
  final List<ManagementGroupResponse>? managementGroups;
  /// Asset manufacturer.
  final String? manufacturer;
  /// Asset manufacturer URI.
  final String? manufacturerUri;
  /// Asset model.
  final String? model;
  /// The name of the resource
  final String name;
  /// Asset product code.
  final String? productCode;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Asset serial number.
  final String? serialNumber;
  /// Asset software revision number.
  final String? softwareRevision;
  /// Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  final NamespaceAssetStatusResponse status;
  /// Array of streams that are part of the asset. Each stream can have a per-stream configuration.
  final List<NamespaceStreamResponse>? streams;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Globally unique, immutable, non-reusable ID.
  final String uuid;
  /// An integer that is incremented each time the resource is modified.
  final double version;

  /// Creates a new [GetNamespaceAssetResult].
  /// [assetTypeRefs] URIs or type definition IDs.
  /// [attributes] A set of key-value pairs that contain custom attributes set by the customer.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [datasets] Array of datasets that are part of the asset. Each dataset describes the data points that make up the set.
  /// [defaultDatasetsConfiguration] Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  /// [defaultDatasetsDestinations] Default destinations for a dataset.
  /// [defaultEventsConfiguration] Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  /// [defaultEventsDestinations] Default destinations for an event.
  /// [defaultManagementGroupsConfiguration] Stringified JSON that contains connector-specific default configuration for all management groups. Each management group can have its own configuration that overrides the default settings here.
  /// [defaultStreamsConfiguration] Stringified JSON that contains connector-specific default configuration for all streams. Each stream can have its own configuration that overrides the default settings here.
  /// [defaultStreamsDestinations] Default destinations for a stream.
  /// [description] Human-readable description of the asset.
  /// [deviceRef] Reference to the device that provides data for this asset. Must provide device name & endpoint on the device to use.
  /// [discoveredAssetRefs] Reference to a list of discovered assets. Populated only if the asset has been created from discovery flow. Discovered asset names must be provided.
  /// [displayName] Human-readable display name.
  /// [documentationUri] Asset documentation reference.
  /// [enabled] Enabled/disabled status of the asset.
  /// [events] Array of events that are part of the asset. Each event can have per-event configuration.
  /// [extendedLocation] The extended location.
  /// [externalAssetId] Asset ID provided by the customer.
  /// [hardwareRevision] Asset hardware revision number.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastTransitionTime] A timestamp (in UTC) that is updated each time the resource is modified.
  /// [location] The geo-location where the resource lives
  /// [managementGroups] Array of management groups that are part of the asset. Each management group can have a per-group configuration.
  /// [manufacturer] Asset manufacturer.
  /// [manufacturerUri] Asset manufacturer URI.
  /// [model] Asset model.
  /// [name] The name of the resource
  /// [productCode] Asset product code.
  /// [provisioningState] Provisioning state of the resource.
  /// [serialNumber] Asset serial number.
  /// [softwareRevision] Asset software revision number.
  /// [status] Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  /// [streams] Array of streams that are part of the asset. Each stream can have a per-stream configuration.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] Globally unique, immutable, non-reusable ID.
  /// [version] An integer that is incremented each time the resource is modified.
  GetNamespaceAssetResult({
    this.assetTypeRefs,
    this.attributes,
    required this.azureApiVersion,
    this.datasets,
    this.defaultDatasetsConfiguration,
    this.defaultDatasetsDestinations,
    this.defaultEventsConfiguration,
    this.defaultEventsDestinations,
    this.defaultManagementGroupsConfiguration,
    this.defaultStreamsConfiguration,
    this.defaultStreamsDestinations,
    this.description,
    required this.deviceRef,
    this.discoveredAssetRefs,
    this.displayName,
    this.documentationUri,
    this.enabled,
    this.events,
    required this.extendedLocation,
    this.externalAssetId,
    this.hardwareRevision,
    required this.id,
    required this.lastTransitionTime,
    required this.location,
    this.managementGroups,
    this.manufacturer,
    this.manufacturerUri,
    this.model,
    required this.name,
    this.productCode,
    required this.provisioningState,
    this.serialNumber,
    this.softwareRevision,
    required this.status,
    this.streams,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uuid,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetTypeRefs': ?assetTypeRefs,
      'attributes': ?attributes,
      'azureApiVersion': azureApiVersion,
      'datasets': ?(() { final guardedValue = datasets; if (guardedValue == null) return null; return pulumi.Input.encodeList<NamespaceDatasetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultDatasetsDestinations': ?(() { final guardedValue = defaultDatasetsDestinations; if (guardedValue == null) return null; return pulumi.Input.encodeList<DatasetBrokerStateStoreDestinationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultEventsDestinations': ?(() { final guardedValue = defaultEventsDestinations; if (guardedValue == null) return null; return pulumi.Input.encodeList<EventMqttDestinationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultManagementGroupsConfiguration': ?defaultManagementGroupsConfiguration,
      'defaultStreamsConfiguration': ?defaultStreamsConfiguration,
      'defaultStreamsDestinations': ?(() { final guardedValue = defaultStreamsDestinations; if (guardedValue == null) return null; return pulumi.Input.encodeList<StreamMqttDestinationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'deviceRef': deviceRef.toMap(),
      'discoveredAssetRefs': ?discoveredAssetRefs,
      'displayName': ?displayName,
      'documentationUri': ?documentationUri,
      'enabled': ?enabled,
      'events': ?(() { final guardedValue = events; if (guardedValue == null) return null; return pulumi.Input.encodeList<NamespaceEventResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'extendedLocation': extendedLocation.toMap(),
      'externalAssetId': ?externalAssetId,
      'hardwareRevision': ?hardwareRevision,
      'id': id,
      'lastTransitionTime': lastTransitionTime,
      'location': location,
      'managementGroups': ?(() { final guardedValue = managementGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<ManagementGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'manufacturer': ?manufacturer,
      'manufacturerUri': ?manufacturerUri,
      'model': ?model,
      'name': name,
      'productCode': ?productCode,
      'provisioningState': provisioningState,
      'serialNumber': ?serialNumber,
      'softwareRevision': ?softwareRevision,
      'status': status.toMap(),
      'streams': ?(() { final guardedValue = streams; if (guardedValue == null) return null; return pulumi.Input.encodeList<NamespaceStreamResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
      'version': version,
    };
  }

  factory GetNamespaceAssetResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAssetResult(
      assetTypeRefs: (() { final guardedValue = map['assetTypeRefs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return guardedValue; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      datasets: (() { final guardedValue = map['datasets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceDatasetResponse>(guardedValue, (value) => NamespaceDatasetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultDatasetsConfiguration: (() { final guardedValue = map['defaultDatasetsConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultDatasetsDestinations: (() { final guardedValue = map['defaultDatasetsDestinations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetBrokerStateStoreDestinationResponse>(guardedValue, (value) => DatasetBrokerStateStoreDestinationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultEventsConfiguration: (() { final guardedValue = map['defaultEventsConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultEventsDestinations: (() { final guardedValue = map['defaultEventsDestinations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventMqttDestinationResponse>(guardedValue, (value) => EventMqttDestinationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultManagementGroupsConfiguration: (() { final guardedValue = map['defaultManagementGroupsConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultStreamsConfiguration: (() { final guardedValue = map['defaultStreamsConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultStreamsDestinations: (() { final guardedValue = map['defaultStreamsDestinations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StreamMqttDestinationResponse>(guardedValue, (value) => StreamMqttDestinationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceRef: DeviceRefResponse.fromMap((map['deviceRef']! as Map).cast<String, dynamic>()),
      discoveredAssetRefs: (() { final guardedValue = map['discoveredAssetRefs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentationUri: (() { final guardedValue = map['documentationUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceEventResponse>(guardedValue, (value) => NamespaceEventResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      externalAssetId: (() { final guardedValue = map['externalAssetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hardwareRevision: (() { final guardedValue = map['hardwareRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      lastTransitionTime: map['lastTransitionTime'] as String,
      location: map['location'] as String,
      managementGroups: (() { final guardedValue = map['managementGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagementGroupResponse>(guardedValue, (value) => ManagementGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      manufacturer: (() { final guardedValue = map['manufacturer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      manufacturerUri: (() { final guardedValue = map['manufacturerUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softwareRevision: (() { final guardedValue = map['softwareRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: NamespaceAssetStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      streams: (() { final guardedValue = map['streams']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceStreamResponse>(guardedValue, (value) => NamespaceStreamResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      version: map['version'] as double,
    );
  }
}

