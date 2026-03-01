// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_broker_state_store_destination.dart';
import 'device_ref.dart';
import 'event_mqtt_destination.dart';
import 'extended_location.dart';
import 'management_group.dart';
import 'namespace_dataset.dart';
import 'namespace_event.dart';
import 'namespace_stream.dart';
import 'stream_mqtt_destination.dart';

/// {@template pulumi_deviceregistry_namespace_asset_args_doc}
/// The set of arguments for NamespaceAsset.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_namespace_asset_args_doc}
class NamespaceAssetArgs {
  /// The name of the asset.
  final pulumi.Input<String>? assetName;
  /// URIs or type definition IDs.
  final pulumi.Input<List<String>>? assetTypeRefs;
  /// A set of key-value pairs that contain custom attributes set by the customer.
  final pulumi.Input<dynamic>? attributes;
  /// Array of datasets that are part of the asset. Each dataset describes the data points that make up the set.
  final pulumi.Input<List<NamespaceDataset>>? datasets;
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
  /// Human-readable description of the asset.
  final pulumi.Input<String>? description;
  /// Reference to the device that provides data for this asset. Must provide device name & endpoint on the device to use.
  final pulumi.Input<DeviceRef> deviceRef;
  /// Reference to a list of discovered assets. Populated only if the asset has been created from discovery flow. Discovered asset names must be provided.
  final pulumi.Input<List<String>>? discoveredAssetRefs;
  /// Human-readable display name.
  final pulumi.Input<String>? displayName;
  /// Asset documentation reference.
  final pulumi.Input<String>? documentationUri;
  /// Enabled/disabled status of the asset.
  final pulumi.Input<bool>? enabled;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final pulumi.Input<List<NamespaceEvent>>? events;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Asset ID provided by the customer.
  final pulumi.Input<String>? externalAssetId;
  /// Asset hardware revision number.
  final pulumi.Input<String>? hardwareRevision;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Array of management groups that are part of the asset. Each management group can have a per-group configuration.
  final pulumi.Input<List<ManagementGroup>>? managementGroups;
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
  final pulumi.Input<List<NamespaceStream>>? streams;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceAssetArgs].
  /// [assetName] The name of the asset.
  /// [assetTypeRefs] URIs or type definition IDs.
  /// [attributes] A set of key-value pairs that contain custom attributes set by the customer.
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
  NamespaceAssetArgs({
    String? assetName,
    List<String>? assetTypeRefs,
    dynamic attributes,
    List<NamespaceDataset>? datasets,
    String? defaultDatasetsConfiguration,
    List<DatasetBrokerStateStoreDestination>? defaultDatasetsDestinations,
    String? defaultEventsConfiguration,
    List<EventMqttDestination>? defaultEventsDestinations,
    String? defaultManagementGroupsConfiguration,
    String? defaultStreamsConfiguration,
    List<StreamMqttDestination>? defaultStreamsDestinations,
    String? description,
    required DeviceRef deviceRef,
    List<String>? discoveredAssetRefs,
    String? displayName,
    String? documentationUri,
    bool? enabled,
    List<NamespaceEvent>? events,
    required ExtendedLocation extendedLocation,
    String? externalAssetId,
    String? hardwareRevision,
    String? location,
    List<ManagementGroup>? managementGroups,
    String? manufacturer,
    String? manufacturerUri,
    String? model,
    required String namespaceName,
    String? productCode,
    required String resourceGroupName,
    String? serialNumber,
    String? softwareRevision,
    List<NamespaceStream>? streams,
    Map<String, String>? tags,
  }) :
      assetName = pulumi.Input.asOptionalInput<String>(assetName),
      assetTypeRefs = pulumi.Input.asOptionalInput<List<String>>(assetTypeRefs),
      attributes = pulumi.Input.asOptionalInput<dynamic>(attributes),
      datasets = pulumi.Input.asOptionalInput<List<NamespaceDataset>>(datasets),
      defaultDatasetsConfiguration = pulumi.Input.asOptionalInput<String>(defaultDatasetsConfiguration),
      defaultDatasetsDestinations = pulumi.Input.asOptionalInput<List<DatasetBrokerStateStoreDestination>>(defaultDatasetsDestinations),
      defaultEventsConfiguration = pulumi.Input.asOptionalInput<String>(defaultEventsConfiguration),
      defaultEventsDestinations = pulumi.Input.asOptionalInput<List<EventMqttDestination>>(defaultEventsDestinations),
      defaultManagementGroupsConfiguration = pulumi.Input.asOptionalInput<String>(defaultManagementGroupsConfiguration),
      defaultStreamsConfiguration = pulumi.Input.asOptionalInput<String>(defaultStreamsConfiguration),
      defaultStreamsDestinations = pulumi.Input.asOptionalInput<List<StreamMqttDestination>>(defaultStreamsDestinations),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceRef = pulumi.Input.asInput<DeviceRef>(deviceRef),
      discoveredAssetRefs = pulumi.Input.asOptionalInput<List<String>>(discoveredAssetRefs),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      documentationUri = pulumi.Input.asOptionalInput<String>(documentationUri),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      events = pulumi.Input.asOptionalInput<List<NamespaceEvent>>(events),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      externalAssetId = pulumi.Input.asOptionalInput<String>(externalAssetId),
      hardwareRevision = pulumi.Input.asOptionalInput<String>(hardwareRevision),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementGroups = pulumi.Input.asOptionalInput<List<ManagementGroup>>(managementGroups),
      manufacturer = pulumi.Input.asOptionalInput<String>(manufacturer),
      manufacturerUri = pulumi.Input.asOptionalInput<String>(manufacturerUri),
      model = pulumi.Input.asOptionalInput<String>(model),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serialNumber = pulumi.Input.asOptionalInput<String>(serialNumber),
      softwareRevision = pulumi.Input.asOptionalInput<String>(softwareRevision),
      streams = pulumi.Input.asOptionalInput<List<NamespaceStream>>(streams),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetName': ?assetName,
      'assetTypeRefs': ?assetTypeRefs,
      'attributes': ?attributes,
      'datasets': ?pulumi.Input.mapOptionalInputValue<List<NamespaceDataset>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<NamespaceDataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultDatasetsDestinations': ?pulumi.Input.mapOptionalInputValue<List<DatasetBrokerStateStoreDestination>, List<Map<String, dynamic>>>(defaultDatasetsDestinations, (value) => pulumi.Input.encodeList<DatasetBrokerStateStoreDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultEventsDestinations': ?pulumi.Input.mapOptionalInputValue<List<EventMqttDestination>, List<Map<String, dynamic>>>(defaultEventsDestinations, (value) => pulumi.Input.encodeList<EventMqttDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultManagementGroupsConfiguration': ?defaultManagementGroupsConfiguration,
      'defaultStreamsConfiguration': ?defaultStreamsConfiguration,
      'defaultStreamsDestinations': ?pulumi.Input.mapOptionalInputValue<List<StreamMqttDestination>, List<Map<String, dynamic>>>(defaultStreamsDestinations, (value) => pulumi.Input.encodeList<StreamMqttDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'deviceRef': pulumi.Input.mapInputValue<DeviceRef, Map<String, dynamic>>(deviceRef, (value) => value.toMap()),
      'discoveredAssetRefs': ?discoveredAssetRefs,
      'displayName': ?displayName,
      'documentationUri': ?documentationUri,
      'enabled': ?enabled,
      'events': ?pulumi.Input.mapOptionalInputValue<List<NamespaceEvent>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<NamespaceEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'externalAssetId': ?externalAssetId,
      'hardwareRevision': ?hardwareRevision,
      'location': ?location,
      'managementGroups': ?pulumi.Input.mapOptionalInputValue<List<ManagementGroup>, List<Map<String, dynamic>>>(managementGroups, (value) => pulumi.Input.encodeList<ManagementGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manufacturer': ?manufacturer,
      'manufacturerUri': ?manufacturerUri,
      'model': ?model,
      'namespaceName': namespaceName,
      'productCode': ?productCode,
      'resourceGroupName': resourceGroupName,
      'serialNumber': ?serialNumber,
      'softwareRevision': ?softwareRevision,
      'streams': ?pulumi.Input.mapOptionalInputValue<List<NamespaceStream>, List<Map<String, dynamic>>>(streams, (value) => pulumi.Input.encodeList<NamespaceStream, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory NamespaceAssetArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceAssetArgs(
      assetName: map['assetName'] == null ? null : map['assetName'] as String,
      assetTypeRefs: map['assetTypeRefs'] == null ? null : (map['assetTypeRefs'] as List).cast<String>(),
      attributes: map['attributes'] == null ? null : map['attributes'],
      datasets: map['datasets'] == null ? null : pulumi.Input.decodeList<NamespaceDataset>(map['datasets'], (value) => NamespaceDataset.fromMap((value as Map).cast<String, dynamic>())),
      defaultDatasetsConfiguration: map['defaultDatasetsConfiguration'] == null ? null : map['defaultDatasetsConfiguration'] as String,
      defaultDatasetsDestinations: map['defaultDatasetsDestinations'] == null ? null : pulumi.Input.decodeList<DatasetBrokerStateStoreDestination>(map['defaultDatasetsDestinations'], (value) => DatasetBrokerStateStoreDestination.fromMap((value as Map).cast<String, dynamic>())),
      defaultEventsConfiguration: map['defaultEventsConfiguration'] == null ? null : map['defaultEventsConfiguration'] as String,
      defaultEventsDestinations: map['defaultEventsDestinations'] == null ? null : pulumi.Input.decodeList<EventMqttDestination>(map['defaultEventsDestinations'], (value) => EventMqttDestination.fromMap((value as Map).cast<String, dynamic>())),
      defaultManagementGroupsConfiguration: map['defaultManagementGroupsConfiguration'] == null ? null : map['defaultManagementGroupsConfiguration'] as String,
      defaultStreamsConfiguration: map['defaultStreamsConfiguration'] == null ? null : map['defaultStreamsConfiguration'] as String,
      defaultStreamsDestinations: map['defaultStreamsDestinations'] == null ? null : pulumi.Input.decodeList<StreamMqttDestination>(map['defaultStreamsDestinations'], (value) => StreamMqttDestination.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      deviceRef: DeviceRef.fromMap((map['deviceRef'] as Map).cast<String, dynamic>()),
      discoveredAssetRefs: map['discoveredAssetRefs'] == null ? null : (map['discoveredAssetRefs'] as List).cast<String>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      documentationUri: map['documentationUri'] == null ? null : map['documentationUri'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      events: map['events'] == null ? null : pulumi.Input.decodeList<NamespaceEvent>(map['events'], (value) => NamespaceEvent.fromMap((value as Map).cast<String, dynamic>())),
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      externalAssetId: map['externalAssetId'] == null ? null : map['externalAssetId'] as String,
      hardwareRevision: map['hardwareRevision'] == null ? null : map['hardwareRevision'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managementGroups: map['managementGroups'] == null ? null : pulumi.Input.decodeList<ManagementGroup>(map['managementGroups'], (value) => ManagementGroup.fromMap((value as Map).cast<String, dynamic>())),
      manufacturer: map['manufacturer'] == null ? null : map['manufacturer'] as String,
      manufacturerUri: map['manufacturerUri'] == null ? null : map['manufacturerUri'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      namespaceName: map['namespaceName'] as String,
      productCode: map['productCode'] == null ? null : map['productCode'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      softwareRevision: map['softwareRevision'] == null ? null : map['softwareRevision'] as String,
      streams: map['streams'] == null ? null : pulumi.Input.decodeList<NamespaceStream>(map['streams'], (value) => NamespaceStream.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

