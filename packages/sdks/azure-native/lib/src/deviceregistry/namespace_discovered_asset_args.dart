// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_broker_state_store_destination.dart';
import 'device_ref.dart';
import 'event_mqtt_destination.dart';
import 'extended_location.dart';
import 'namespace_discovered_dataset.dart';
import 'namespace_discovered_event.dart';
import 'namespace_discovered_management_group.dart';
import 'namespace_discovered_stream.dart';
import 'stream_mqtt_destination.dart';

/// {@template pulumi_deviceregistry_namespace_discovered_asset_args_doc}
/// The set of arguments for NamespaceDiscoveredAsset.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_namespace_discovered_asset_args_doc}
class NamespaceDiscoveredAssetArgs {
  /// URIs or type definition IDs.
  final pulumi.Input<List<String>>? assetTypeRefs;
  /// A set of key-value pairs that contain custom attributes.
  final pulumi.Input<dynamic>? attributes;
  /// Array of datasets that are part of the asset. Each dataset spec describes the data points that make up the set.
  final pulumi.Input<List<NamespaceDiscoveredDataset>>? datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  final pulumi.Input<String>? defaultDatasetsConfiguration;
  /// Default destinations for a dataset.
  final pulumi.Input<List<DatasetBrokerStateStoreDestination>>? defaultDatasetsDestinations;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  final pulumi.Input<String>? defaultEventsConfiguration;
  /// Default destinations for an event.
  final pulumi.Input<List<EventMqttDestination>>? defaultEventsDestinations;
  /// Stringified JSON that contains connector-specific default configuration for all management groups. Each management group can have its own configuration that overrides the default settings here.
  final pulumi.Input<String>? defaultManagementGroupsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all streams. Each stream can have its own configuration that overrides the default settings here.
  final pulumi.Input<String>? defaultStreamsConfiguration;
  /// Default destinations for a stream.
  final pulumi.Input<List<StreamMqttDestination>>? defaultStreamsDestinations;
  /// Reference to the device that provides data for this asset. Must provide device name & endpoint on the device to use.
  final pulumi.Input<DeviceRef> deviceRef;
  /// The name of the discovered asset.
  final pulumi.Input<String>? discoveredAssetName;
  /// Identifier used to detect changes in the asset.
  final pulumi.Input<String> discoveryId;
  /// Asset documentation reference.
  final pulumi.Input<String>? documentationUri;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final pulumi.Input<List<NamespaceDiscoveredEvent>>? events;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Asset hardware revision number.
  final pulumi.Input<String>? hardwareRevision;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Array of management groups that are part of the asset. Each management group can have a per-group configuration.
  final pulumi.Input<List<NamespaceDiscoveredManagementGroup>>? managementGroups;
  /// Asset manufacturer.
  final pulumi.Input<String>? manufacturer;
  /// Asset manufacturer URI.
  final pulumi.Input<String>? manufacturerUri;
  /// Asset model.
  final pulumi.Input<String>? model;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// Asset product code.
  final pulumi.Input<String>? productCode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Asset serial number.
  final pulumi.Input<String>? serialNumber;
  /// Asset software revision number.
  final pulumi.Input<String>? softwareRevision;
  /// Array of streams that are part of the asset. Each stream can have a per-stream configuration.
  final pulumi.Input<List<NamespaceDiscoveredStream>>? streams;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// An integer that is incremented each time the resource is modified.
  final pulumi.Input<double> version;

  /// Creates a new [NamespaceDiscoveredAssetArgs].
  /// [assetTypeRefs] URIs or type definition IDs.
  /// [attributes] A set of key-value pairs that contain custom attributes.
  /// [datasets] Array of datasets that are part of the asset. Each dataset spec describes the data points that make up the set.
  /// [defaultDatasetsConfiguration] Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  /// [defaultDatasetsDestinations] Default destinations for a dataset.
  /// [defaultEventsConfiguration] Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  /// [defaultEventsDestinations] Default destinations for an event.
  /// [defaultManagementGroupsConfiguration] Stringified JSON that contains connector-specific default configuration for all management groups. Each management group can have its own configuration that overrides the default settings here.
  /// [defaultStreamsConfiguration] Stringified JSON that contains connector-specific default configuration for all streams. Each stream can have its own configuration that overrides the default settings here.
  /// [defaultStreamsDestinations] Default destinations for a stream.
  /// [deviceRef] Reference to the device that provides data for this asset. Must provide device name & endpoint on the device to use.
  /// [discoveredAssetName] The name of the discovered asset.
  /// [discoveryId] Identifier used to detect changes in the asset.
  /// [documentationUri] Asset documentation reference.
  /// [events] Array of events that are part of the asset. Each event can have per-event configuration.
  /// [extendedLocation] The extended location.
  /// [hardwareRevision] Asset hardware revision number.
  /// [location] The geo-location where the resource lives
  /// [managementGroups] Array of management groups that are part of the asset. Each management group can have a per-group configuration.
  /// [manufacturer] Asset manufacturer.
  /// [manufacturerUri] Asset manufacturer URI.
  /// [model] Asset model.
  /// [namespaceName] The name of the namespace.
  /// [productCode] Asset product code.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serialNumber] Asset serial number.
  /// [softwareRevision] Asset software revision number.
  /// [streams] Array of streams that are part of the asset. Each stream can have a per-stream configuration.
  /// [tags] Resource tags.
  /// [version] An integer that is incremented each time the resource is modified.
  NamespaceDiscoveredAssetArgs({
    this.assetTypeRefs,
    this.attributes,
    this.datasets,
    this.defaultDatasetsConfiguration,
    this.defaultDatasetsDestinations,
    this.defaultEventsConfiguration,
    this.defaultEventsDestinations,
    this.defaultManagementGroupsConfiguration,
    this.defaultStreamsConfiguration,
    this.defaultStreamsDestinations,
    required this.deviceRef,
    this.discoveredAssetName,
    required this.discoveryId,
    this.documentationUri,
    this.events,
    required this.extendedLocation,
    this.hardwareRevision,
    this.location,
    this.managementGroups,
    this.manufacturer,
    this.manufacturerUri,
    this.model,
    required this.namespaceName,
    this.productCode,
    required this.resourceGroupName,
    this.serialNumber,
    this.softwareRevision,
    this.streams,
    this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetTypeRefs': ?assetTypeRefs,
      'attributes': ?attributes,
      'datasets': ?pulumi.Input.mapOptionalInputValue<List<NamespaceDiscoveredDataset>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<NamespaceDiscoveredDataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultDatasetsDestinations': ?pulumi.Input.mapOptionalInputValue<List<DatasetBrokerStateStoreDestination>, List<Map<String, dynamic>>>(defaultDatasetsDestinations, (value) => pulumi.Input.encodeList<DatasetBrokerStateStoreDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultEventsDestinations': ?pulumi.Input.mapOptionalInputValue<List<EventMqttDestination>, List<Map<String, dynamic>>>(defaultEventsDestinations, (value) => pulumi.Input.encodeList<EventMqttDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultManagementGroupsConfiguration': ?defaultManagementGroupsConfiguration,
      'defaultStreamsConfiguration': ?defaultStreamsConfiguration,
      'defaultStreamsDestinations': ?pulumi.Input.mapOptionalInputValue<List<StreamMqttDestination>, List<Map<String, dynamic>>>(defaultStreamsDestinations, (value) => pulumi.Input.encodeList<StreamMqttDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceRef': pulumi.Input.mapInputValue<DeviceRef, Map<String, dynamic>>(deviceRef, (value) => value.toMap()),
      'discoveredAssetName': ?discoveredAssetName,
      'discoveryId': discoveryId,
      'documentationUri': ?documentationUri,
      'events': ?pulumi.Input.mapOptionalInputValue<List<NamespaceDiscoveredEvent>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<NamespaceDiscoveredEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hardwareRevision': ?hardwareRevision,
      'location': ?location,
      'managementGroups': ?pulumi.Input.mapOptionalInputValue<List<NamespaceDiscoveredManagementGroup>, List<Map<String, dynamic>>>(managementGroups, (value) => pulumi.Input.encodeList<NamespaceDiscoveredManagementGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manufacturer': ?manufacturer,
      'manufacturerUri': ?manufacturerUri,
      'model': ?model,
      'namespaceName': namespaceName,
      'productCode': ?productCode,
      'resourceGroupName': resourceGroupName,
      'serialNumber': ?serialNumber,
      'softwareRevision': ?softwareRevision,
      'streams': ?pulumi.Input.mapOptionalInputValue<List<NamespaceDiscoveredStream>, List<Map<String, dynamic>>>(streams, (value) => pulumi.Input.encodeList<NamespaceDiscoveredStream, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'version': version,
    };
  }

  factory NamespaceDiscoveredAssetArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredAssetArgs(
      assetTypeRefs: map['assetTypeRefs'] == null ? null : ((map['assetTypeRefs'] as List).cast<String>()).input(),
      attributes: map['attributes'] == null ? null : (map['attributes']).input(),
      datasets: map['datasets'] == null ? null : (pulumi.Input.decodeList<NamespaceDiscoveredDataset>(map['datasets'], (value) => NamespaceDiscoveredDataset.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultDatasetsConfiguration: map['defaultDatasetsConfiguration'] == null ? null : (map['defaultDatasetsConfiguration'] as String).input(),
      defaultDatasetsDestinations: map['defaultDatasetsDestinations'] == null ? null : (pulumi.Input.decodeList<DatasetBrokerStateStoreDestination>(map['defaultDatasetsDestinations'], (value) => DatasetBrokerStateStoreDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultEventsConfiguration: map['defaultEventsConfiguration'] == null ? null : (map['defaultEventsConfiguration'] as String).input(),
      defaultEventsDestinations: map['defaultEventsDestinations'] == null ? null : (pulumi.Input.decodeList<EventMqttDestination>(map['defaultEventsDestinations'], (value) => EventMqttDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultManagementGroupsConfiguration: map['defaultManagementGroupsConfiguration'] == null ? null : (map['defaultManagementGroupsConfiguration'] as String).input(),
      defaultStreamsConfiguration: map['defaultStreamsConfiguration'] == null ? null : (map['defaultStreamsConfiguration'] as String).input(),
      defaultStreamsDestinations: map['defaultStreamsDestinations'] == null ? null : (pulumi.Input.decodeList<StreamMqttDestination>(map['defaultStreamsDestinations'], (value) => StreamMqttDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deviceRef: (DeviceRef.fromMap((map['deviceRef'] as Map).cast<String, dynamic>())).input(),
      discoveredAssetName: map['discoveredAssetName'] == null ? null : (map['discoveredAssetName'] as String).input(),
      discoveryId: (map['discoveryId'] as String).input(),
      documentationUri: map['documentationUri'] == null ? null : (map['documentationUri'] as String).input(),
      events: map['events'] == null ? null : (pulumi.Input.decodeList<NamespaceDiscoveredEvent>(map['events'], (value) => NamespaceDiscoveredEvent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      hardwareRevision: map['hardwareRevision'] == null ? null : (map['hardwareRevision'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managementGroups: map['managementGroups'] == null ? null : (pulumi.Input.decodeList<NamespaceDiscoveredManagementGroup>(map['managementGroups'], (value) => NamespaceDiscoveredManagementGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      manufacturer: map['manufacturer'] == null ? null : (map['manufacturer'] as String).input(),
      manufacturerUri: map['manufacturerUri'] == null ? null : (map['manufacturerUri'] as String).input(),
      model: map['model'] == null ? null : (map['model'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      productCode: map['productCode'] == null ? null : (map['productCode'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber'] as String).input(),
      softwareRevision: map['softwareRevision'] == null ? null : (map['softwareRevision'] as String).input(),
      streams: map['streams'] == null ? null : (pulumi.Input.decodeList<NamespaceDiscoveredStream>(map['streams'], (value) => NamespaceDiscoveredStream.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      version: (map['version'] as double).input(),
    );
  }
}

