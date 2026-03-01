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
    pulumi.Output<List<String>>? assetTypeRefs,
    pulumi.Output<dynamic>? attributes,
    pulumi.Output<List<NamespaceDiscoveredDataset>>? datasets,
    pulumi.Output<String>? defaultDatasetsConfiguration,
    pulumi.Output<List<DatasetBrokerStateStoreDestination>>? defaultDatasetsDestinations,
    pulumi.Output<String>? defaultEventsConfiguration,
    pulumi.Output<List<EventMqttDestination>>? defaultEventsDestinations,
    pulumi.Output<String>? defaultManagementGroupsConfiguration,
    pulumi.Output<String>? defaultStreamsConfiguration,
    pulumi.Output<List<StreamMqttDestination>>? defaultStreamsDestinations,
    required pulumi.Output<DeviceRef> deviceRef,
    pulumi.Output<String>? discoveredAssetName,
    required pulumi.Output<String> discoveryId,
    pulumi.Output<String>? documentationUri,
    pulumi.Output<List<NamespaceDiscoveredEvent>>? events,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<String>? hardwareRevision,
    pulumi.Output<String>? location,
    pulumi.Output<List<NamespaceDiscoveredManagementGroup>>? managementGroups,
    pulumi.Output<String>? manufacturer,
    pulumi.Output<String>? manufacturerUri,
    pulumi.Output<String>? model,
    required pulumi.Output<String> namespaceName,
    pulumi.Output<String>? productCode,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serialNumber,
    pulumi.Output<String>? softwareRevision,
    pulumi.Output<List<NamespaceDiscoveredStream>>? streams,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<double> version,
  }) :
      assetTypeRefs = pulumi.Input.asOptionalInput<List<String>>(assetTypeRefs),
      attributes = pulumi.Input.asOptionalInput<dynamic>(attributes),
      datasets = pulumi.Input.asOptionalInput<List<NamespaceDiscoveredDataset>>(datasets),
      defaultDatasetsConfiguration = pulumi.Input.asOptionalInput<String>(defaultDatasetsConfiguration),
      defaultDatasetsDestinations = pulumi.Input.asOptionalInput<List<DatasetBrokerStateStoreDestination>>(defaultDatasetsDestinations),
      defaultEventsConfiguration = pulumi.Input.asOptionalInput<String>(defaultEventsConfiguration),
      defaultEventsDestinations = pulumi.Input.asOptionalInput<List<EventMqttDestination>>(defaultEventsDestinations),
      defaultManagementGroupsConfiguration = pulumi.Input.asOptionalInput<String>(defaultManagementGroupsConfiguration),
      defaultStreamsConfiguration = pulumi.Input.asOptionalInput<String>(defaultStreamsConfiguration),
      defaultStreamsDestinations = pulumi.Input.asOptionalInput<List<StreamMqttDestination>>(defaultStreamsDestinations),
      deviceRef = pulumi.Input.asInput<DeviceRef>(deviceRef),
      discoveredAssetName = pulumi.Input.asOptionalInput<String>(discoveredAssetName),
      discoveryId = pulumi.Input.asInput<String>(discoveryId),
      documentationUri = pulumi.Input.asOptionalInput<String>(documentationUri),
      events = pulumi.Input.asOptionalInput<List<NamespaceDiscoveredEvent>>(events),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      hardwareRevision = pulumi.Input.asOptionalInput<String>(hardwareRevision),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementGroups = pulumi.Input.asOptionalInput<List<NamespaceDiscoveredManagementGroup>>(managementGroups),
      manufacturer = pulumi.Input.asOptionalInput<String>(manufacturer),
      manufacturerUri = pulumi.Input.asOptionalInput<String>(manufacturerUri),
      model = pulumi.Input.asOptionalInput<String>(model),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serialNumber = pulumi.Input.asOptionalInput<String>(serialNumber),
      softwareRevision = pulumi.Input.asOptionalInput<String>(softwareRevision),
      streams = pulumi.Input.asOptionalInput<List<NamespaceDiscoveredStream>>(streams),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asInput<double>(version);

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
      assetTypeRefs: map['assetTypeRefs'] == null ? null : pulumi.Output.create<List<String>>((map['assetTypeRefs'] as List).cast<String>()),
      attributes: map['attributes'] == null ? null : pulumi.Output.create<dynamic>(map['attributes']),
      datasets: map['datasets'] == null ? null : pulumi.Output.create<List<NamespaceDiscoveredDataset>>(pulumi.Input.decodeList<NamespaceDiscoveredDataset>(map['datasets'], (value) => NamespaceDiscoveredDataset.fromMap((value as Map).cast<String, dynamic>()))),
      defaultDatasetsConfiguration: map['defaultDatasetsConfiguration'] == null ? null : pulumi.Output.create<String>(map['defaultDatasetsConfiguration'] as String),
      defaultDatasetsDestinations: map['defaultDatasetsDestinations'] == null ? null : pulumi.Output.create<List<DatasetBrokerStateStoreDestination>>(pulumi.Input.decodeList<DatasetBrokerStateStoreDestination>(map['defaultDatasetsDestinations'], (value) => DatasetBrokerStateStoreDestination.fromMap((value as Map).cast<String, dynamic>()))),
      defaultEventsConfiguration: map['defaultEventsConfiguration'] == null ? null : pulumi.Output.create<String>(map['defaultEventsConfiguration'] as String),
      defaultEventsDestinations: map['defaultEventsDestinations'] == null ? null : pulumi.Output.create<List<EventMqttDestination>>(pulumi.Input.decodeList<EventMqttDestination>(map['defaultEventsDestinations'], (value) => EventMqttDestination.fromMap((value as Map).cast<String, dynamic>()))),
      defaultManagementGroupsConfiguration: map['defaultManagementGroupsConfiguration'] == null ? null : pulumi.Output.create<String>(map['defaultManagementGroupsConfiguration'] as String),
      defaultStreamsConfiguration: map['defaultStreamsConfiguration'] == null ? null : pulumi.Output.create<String>(map['defaultStreamsConfiguration'] as String),
      defaultStreamsDestinations: map['defaultStreamsDestinations'] == null ? null : pulumi.Output.create<List<StreamMqttDestination>>(pulumi.Input.decodeList<StreamMqttDestination>(map['defaultStreamsDestinations'], (value) => StreamMqttDestination.fromMap((value as Map).cast<String, dynamic>()))),
      deviceRef: pulumi.Output.create<DeviceRef>(DeviceRef.fromMap((map['deviceRef'] as Map).cast<String, dynamic>())),
      discoveredAssetName: map['discoveredAssetName'] == null ? null : pulumi.Output.create<String>(map['discoveredAssetName'] as String),
      discoveryId: pulumi.Output.create<String>(map['discoveryId'] as String),
      documentationUri: map['documentationUri'] == null ? null : pulumi.Output.create<String>(map['documentationUri'] as String),
      events: map['events'] == null ? null : pulumi.Output.create<List<NamespaceDiscoveredEvent>>(pulumi.Input.decodeList<NamespaceDiscoveredEvent>(map['events'], (value) => NamespaceDiscoveredEvent.fromMap((value as Map).cast<String, dynamic>()))),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      hardwareRevision: map['hardwareRevision'] == null ? null : pulumi.Output.create<String>(map['hardwareRevision'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementGroups: map['managementGroups'] == null ? null : pulumi.Output.create<List<NamespaceDiscoveredManagementGroup>>(pulumi.Input.decodeList<NamespaceDiscoveredManagementGroup>(map['managementGroups'], (value) => NamespaceDiscoveredManagementGroup.fromMap((value as Map).cast<String, dynamic>()))),
      manufacturer: map['manufacturer'] == null ? null : pulumi.Output.create<String>(map['manufacturer'] as String),
      manufacturerUri: map['manufacturerUri'] == null ? null : pulumi.Output.create<String>(map['manufacturerUri'] as String),
      model: map['model'] == null ? null : pulumi.Output.create<String>(map['model'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      productCode: map['productCode'] == null ? null : pulumi.Output.create<String>(map['productCode'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serialNumber: map['serialNumber'] == null ? null : pulumi.Output.create<String>(map['serialNumber'] as String),
      softwareRevision: map['softwareRevision'] == null ? null : pulumi.Output.create<String>(map['softwareRevision'] as String),
      streams: map['streams'] == null ? null : pulumi.Output.create<List<NamespaceDiscoveredStream>>(pulumi.Input.decodeList<NamespaceDiscoveredStream>(map['streams'], (value) => NamespaceDiscoveredStream.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: pulumi.Output.create<double>(map['version'] as double),
    );
  }
}

