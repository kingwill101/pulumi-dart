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
      'datasets': ?datasets == null ? null : pulumi.Input.encodeList<NamespaceDatasetResponse, Map<String, dynamic>>(datasets!, (value) => value.toMap()),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultDatasetsDestinations': ?defaultDatasetsDestinations == null ? null : pulumi.Input.encodeList<DatasetBrokerStateStoreDestinationResponse, Map<String, dynamic>>(defaultDatasetsDestinations!, (value) => value.toMap()),
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultEventsDestinations': ?defaultEventsDestinations == null ? null : pulumi.Input.encodeList<EventMqttDestinationResponse, Map<String, dynamic>>(defaultEventsDestinations!, (value) => value.toMap()),
      'defaultManagementGroupsConfiguration': ?defaultManagementGroupsConfiguration,
      'defaultStreamsConfiguration': ?defaultStreamsConfiguration,
      'defaultStreamsDestinations': ?defaultStreamsDestinations == null ? null : pulumi.Input.encodeList<StreamMqttDestinationResponse, Map<String, dynamic>>(defaultStreamsDestinations!, (value) => value.toMap()),
      'description': ?description,
      'deviceRef': deviceRef.toMap(),
      'discoveredAssetRefs': ?discoveredAssetRefs,
      'displayName': ?displayName,
      'documentationUri': ?documentationUri,
      'enabled': ?enabled,
      'events': ?events == null ? null : pulumi.Input.encodeList<NamespaceEventResponse, Map<String, dynamic>>(events!, (value) => value.toMap()),
      'extendedLocation': extendedLocation.toMap(),
      'externalAssetId': ?externalAssetId,
      'hardwareRevision': ?hardwareRevision,
      'id': id,
      'lastTransitionTime': lastTransitionTime,
      'location': location,
      'managementGroups': ?managementGroups == null ? null : pulumi.Input.encodeList<ManagementGroupResponse, Map<String, dynamic>>(managementGroups!, (value) => value.toMap()),
      'manufacturer': ?manufacturer,
      'manufacturerUri': ?manufacturerUri,
      'model': ?model,
      'name': name,
      'productCode': ?productCode,
      'provisioningState': provisioningState,
      'serialNumber': ?serialNumber,
      'softwareRevision': ?softwareRevision,
      'status': status.toMap(),
      'streams': ?streams == null ? null : pulumi.Input.encodeList<NamespaceStreamResponse, Map<String, dynamic>>(streams!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
      'version': version,
    };
  }

  factory GetNamespaceAssetResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAssetResult(
      assetTypeRefs: map['assetTypeRefs'] == null ? null : (map['assetTypeRefs'] as List).cast<String>(),
      attributes: map['attributes'] == null ? null : map['attributes'],
      azureApiVersion: map['azureApiVersion'] as String,
      datasets: map['datasets'] == null ? null : pulumi.Input.decodeList<NamespaceDatasetResponse>(map['datasets'], (value) => NamespaceDatasetResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultDatasetsConfiguration: map['defaultDatasetsConfiguration'] == null ? null : map['defaultDatasetsConfiguration'] as String,
      defaultDatasetsDestinations: map['defaultDatasetsDestinations'] == null ? null : pulumi.Input.decodeList<DatasetBrokerStateStoreDestinationResponse>(map['defaultDatasetsDestinations'], (value) => DatasetBrokerStateStoreDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultEventsConfiguration: map['defaultEventsConfiguration'] == null ? null : map['defaultEventsConfiguration'] as String,
      defaultEventsDestinations: map['defaultEventsDestinations'] == null ? null : pulumi.Input.decodeList<EventMqttDestinationResponse>(map['defaultEventsDestinations'], (value) => EventMqttDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultManagementGroupsConfiguration: map['defaultManagementGroupsConfiguration'] == null ? null : map['defaultManagementGroupsConfiguration'] as String,
      defaultStreamsConfiguration: map['defaultStreamsConfiguration'] == null ? null : map['defaultStreamsConfiguration'] as String,
      defaultStreamsDestinations: map['defaultStreamsDestinations'] == null ? null : pulumi.Input.decodeList<StreamMqttDestinationResponse>(map['defaultStreamsDestinations'], (value) => StreamMqttDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      deviceRef: DeviceRefResponse.fromMap((map['deviceRef'] as Map).cast<String, dynamic>()),
      discoveredAssetRefs: map['discoveredAssetRefs'] == null ? null : (map['discoveredAssetRefs'] as List).cast<String>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      documentationUri: map['documentationUri'] == null ? null : map['documentationUri'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      events: map['events'] == null ? null : pulumi.Input.decodeList<NamespaceEventResponse>(map['events'], (value) => NamespaceEventResponse.fromMap((value as Map).cast<String, dynamic>())),
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      externalAssetId: map['externalAssetId'] == null ? null : map['externalAssetId'] as String,
      hardwareRevision: map['hardwareRevision'] == null ? null : map['hardwareRevision'] as String,
      id: map['id'] as String,
      lastTransitionTime: map['lastTransitionTime'] as String,
      location: map['location'] as String,
      managementGroups: map['managementGroups'] == null ? null : pulumi.Input.decodeList<ManagementGroupResponse>(map['managementGroups'], (value) => ManagementGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      manufacturer: map['manufacturer'] == null ? null : map['manufacturer'] as String,
      manufacturerUri: map['manufacturerUri'] == null ? null : map['manufacturerUri'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      name: map['name'] as String,
      productCode: map['productCode'] == null ? null : map['productCode'] as String,
      provisioningState: map['provisioningState'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      softwareRevision: map['softwareRevision'] == null ? null : map['softwareRevision'] as String,
      status: NamespaceAssetStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      streams: map['streams'] == null ? null : pulumi.Input.decodeList<NamespaceStreamResponse>(map['streams'], (value) => NamespaceStreamResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      version: map['version'] as double,
    );
  }
}

