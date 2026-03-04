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
  final pulumi.Input<List<DatasetBrokerStateStoreDestination>>?
  defaultDatasetsDestinations;

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
    this.assetName,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetName': ?assetName,
      'assetTypeRefs': ?assetTypeRefs,
      'attributes': ?attributes,
      'datasets':
          ?pulumi.Input.mapOptionalInputValue<
            List<NamespaceDataset>,
            List<Map<String, dynamic>>
          >(
            datasets,
            (value) =>
                pulumi.Input.encodeList<NamespaceDataset, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultDatasetsDestinations':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatasetBrokerStateStoreDestination>,
            List<Map<String, dynamic>>
          >(
            defaultDatasetsDestinations,
            (value) =>
                pulumi.Input.encodeList<
                  DatasetBrokerStateStoreDestination,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultEventsDestinations':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventMqttDestination>,
            List<Map<String, dynamic>>
          >(
            defaultEventsDestinations,
            (value) =>
                pulumi.Input.encodeList<
                  EventMqttDestination,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultManagementGroupsConfiguration':
          ?defaultManagementGroupsConfiguration,
      'defaultStreamsConfiguration': ?defaultStreamsConfiguration,
      'defaultStreamsDestinations':
          ?pulumi.Input.mapOptionalInputValue<
            List<StreamMqttDestination>,
            List<Map<String, dynamic>>
          >(
            defaultStreamsDestinations,
            (value) =>
                pulumi.Input.encodeList<
                  StreamMqttDestination,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'deviceRef': pulumi.Input.mapInputValue<DeviceRef, Map<String, dynamic>>(
        deviceRef,
        (value) => value.toMap(),
      ),
      'discoveredAssetRefs': ?discoveredAssetRefs,
      'displayName': ?displayName,
      'documentationUri': ?documentationUri,
      'enabled': ?enabled,
      'events':
          ?pulumi.Input.mapOptionalInputValue<
            List<NamespaceEvent>,
            List<Map<String, dynamic>>
          >(
            events,
            (value) =>
                pulumi.Input.encodeList<NamespaceEvent, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'extendedLocation':
          pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(
            extendedLocation,
            (value) => value.toMap(),
          ),
      'externalAssetId': ?externalAssetId,
      'hardwareRevision': ?hardwareRevision,
      'location': ?location,
      'managementGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<ManagementGroup>,
            List<Map<String, dynamic>>
          >(
            managementGroups,
            (value) =>
                pulumi.Input.encodeList<ManagementGroup, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'manufacturer': ?manufacturer,
      'manufacturerUri': ?manufacturerUri,
      'model': ?model,
      'namespaceName': namespaceName,
      'productCode': ?productCode,
      'resourceGroupName': resourceGroupName,
      'serialNumber': ?serialNumber,
      'softwareRevision': ?softwareRevision,
      'streams':
          ?pulumi.Input.mapOptionalInputValue<
            List<NamespaceStream>,
            List<Map<String, dynamic>>
          >(
            streams,
            (value) =>
                pulumi.Input.encodeList<NamespaceStream, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
    };
  }

  factory NamespaceAssetArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceAssetArgs(
      assetName: (() {
        final guardedValue = map['assetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      assetTypeRefs: (() {
        final guardedValue = map['assetTypeRefs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      datasets: (() {
        final guardedValue = map['datasets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NamespaceDataset>(
            guardedValue,
            (value) => NamespaceDataset.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      defaultDatasetsConfiguration: (() {
        final guardedValue = map['defaultDatasetsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultDatasetsDestinations: (() {
        final guardedValue = map['defaultDatasetsDestinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DatasetBrokerStateStoreDestination>(
            guardedValue,
            (value) => DatasetBrokerStateStoreDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      defaultEventsConfiguration: (() {
        final guardedValue = map['defaultEventsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultEventsDestinations: (() {
        final guardedValue = map['defaultEventsDestinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EventMqttDestination>(
            guardedValue,
            (value) => EventMqttDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      defaultManagementGroupsConfiguration: (() {
        final guardedValue = map['defaultManagementGroupsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultStreamsConfiguration: (() {
        final guardedValue = map['defaultStreamsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultStreamsDestinations: (() {
        final guardedValue = map['defaultStreamsDestinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<StreamMqttDestination>(
            guardedValue,
            (value) => StreamMqttDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceRef: pulumi.Input.fromValue(
        DeviceRef.fromMap((map['deviceRef']! as Map).cast<String, dynamic>()),
      ),
      discoveredAssetRefs: (() {
        final guardedValue = map['discoveredAssetRefs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentationUri: (() {
        final guardedValue = map['documentationUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      events: (() {
        final guardedValue = map['events'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NamespaceEvent>(
            guardedValue,
            (value) =>
                NamespaceEvent.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      extendedLocation: pulumi.Input.fromValue(
        ExtendedLocation.fromMap(
          (map['extendedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      externalAssetId: (() {
        final guardedValue = map['externalAssetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hardwareRevision: (() {
        final guardedValue = map['hardwareRevision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managementGroups: (() {
        final guardedValue = map['managementGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ManagementGroup>(
            guardedValue,
            (value) =>
                ManagementGroup.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      manufacturer: (() {
        final guardedValue = map['manufacturer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      manufacturerUri: (() {
        final guardedValue = map['manufacturerUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      productCode: (() {
        final guardedValue = map['productCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serialNumber: (() {
        final guardedValue = map['serialNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      softwareRevision: (() {
        final guardedValue = map['softwareRevision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streams: (() {
        final guardedValue = map['streams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NamespaceStream>(
            guardedValue,
            (value) =>
                NamespaceStream.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
