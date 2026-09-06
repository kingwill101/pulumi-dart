// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_ref.dart';
import 'extended_location.dart';
import 'namespace_discovered_dataset.dart';
import 'namespace_discovered_event.dart';
import 'namespace_discovered_management_group.dart';
import 'namespace_discovered_stream.dart';

/// {@template pulumi_deviceregistry_namespace_discovered_asset_args_doc}
/// The set of arguments for NamespaceDiscoveredAsset.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_namespace_discovered_asset_args_doc}
class NamespaceDiscoveredAssetArgs {
  /// URIs or type definition IDs.
  final pulumi.Input<List<String>?>? assetTypeRefs;
  /// A set of key-value pairs that contain custom attributes.
  final pulumi.Input<dynamic>? attributes;
  /// Array of datasets that are part of the asset. Each dataset spec describes the data points that make up the set.
  final pulumi.Input<List<NamespaceDiscoveredDataset>?>? datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  final pulumi.Input<String?>? defaultDatasetsConfiguration;
  /// Default destinations for a dataset.
  final pulumi.Input<List<dynamic>?>? defaultDatasetsDestinations;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  final pulumi.Input<String?>? defaultEventsConfiguration;
  /// Default destinations for an event.
  final pulumi.Input<List<dynamic>?>? defaultEventsDestinations;
  /// Stringified JSON that contains connector-specific default configuration for all management groups. Each management group can have its own configuration that overrides the default settings here.
  final pulumi.Input<String?>? defaultManagementGroupsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all streams. Each stream can have its own configuration that overrides the default settings here.
  final pulumi.Input<String?>? defaultStreamsConfiguration;
  /// Default destinations for a stream.
  final pulumi.Input<List<dynamic>?>? defaultStreamsDestinations;
  /// Reference to the device that provides data for this asset. Must provide device name & endpoint on the device to use.
  final pulumi.Input<DeviceRef> deviceRef;
  /// The name of the discovered asset.
  final pulumi.Input<String?>? discoveredAssetName;
  /// Identifier used to detect changes in the asset.
  final pulumi.Input<String> discoveryId;
  /// Asset documentation reference.
  final pulumi.Input<String?>? documentationUri;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final pulumi.Input<List<NamespaceDiscoveredEvent>?>? events;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Asset hardware revision number.
  final pulumi.Input<String?>? hardwareRevision;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Array of management groups that are part of the asset. Each management group can have a per-group configuration.
  final pulumi.Input<List<NamespaceDiscoveredManagementGroup>?>? managementGroups;
  /// Asset manufacturer.
  final pulumi.Input<String?>? manufacturer;
  /// Asset manufacturer URI.
  final pulumi.Input<String?>? manufacturerUri;
  /// Asset model.
  final pulumi.Input<String?>? model;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// Asset product code.
  final pulumi.Input<String?>? productCode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Asset serial number.
  final pulumi.Input<String?>? serialNumber;
  /// Asset software revision number.
  final pulumi.Input<String?>? softwareRevision;
  /// Array of streams that are part of the asset. Each stream can have a per-stream configuration.
  final pulumi.Input<List<NamespaceDiscoveredStream>?>? streams;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
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
  const NamespaceDiscoveredAssetArgs({
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
      'defaultDatasetsDestinations': ?defaultDatasetsDestinations,
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultEventsDestinations': ?defaultEventsDestinations,
      'defaultManagementGroupsConfiguration': ?defaultManagementGroupsConfiguration,
      'defaultStreamsConfiguration': ?defaultStreamsConfiguration,
      'defaultStreamsDestinations': ?defaultStreamsDestinations,
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
      assetTypeRefs: (() { final guardedValue = map['assetTypeRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      datasets: (() { final guardedValue = map['datasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceDiscoveredDataset>(guardedValue, (value) => NamespaceDiscoveredDataset.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultDatasetsConfiguration: (() { final guardedValue = map['defaultDatasetsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDatasetsDestinations: (() { final guardedValue = map['defaultDatasetsDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      defaultEventsConfiguration: (() { final guardedValue = map['defaultEventsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultEventsDestinations: (() { final guardedValue = map['defaultEventsDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      defaultManagementGroupsConfiguration: (() { final guardedValue = map['defaultManagementGroupsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultStreamsConfiguration: (() { final guardedValue = map['defaultStreamsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultStreamsDestinations: (() { final guardedValue = map['defaultStreamsDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      deviceRef: pulumi.Input.fromValue(DeviceRef.fromMap((map['deviceRef']! as Map).cast<String, dynamic>())),
      discoveredAssetName: (() { final guardedValue = map['discoveredAssetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveryId: pulumi.Input.fromValue(map['discoveryId'] as String),
      documentationUri: (() { final guardedValue = map['documentationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceDiscoveredEvent>(guardedValue, (value) => NamespaceDiscoveredEvent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      hardwareRevision: (() { final guardedValue = map['hardwareRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroups: (() { final guardedValue = map['managementGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceDiscoveredManagementGroup>(guardedValue, (value) => NamespaceDiscoveredManagementGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manufacturer: (() { final guardedValue = map['manufacturer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manufacturerUri: (() { final guardedValue = map['manufacturerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softwareRevision: (() { final guardedValue = map['softwareRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streams: (() { final guardedValue = map['streams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceDiscoveredStream>(guardedValue, (value) => NamespaceDiscoveredStream.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: pulumi.Input.fromValue((map['version'] as num).toDouble()),
    );
  }
}
