// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset.dart';
import 'event.dart';
import 'extended_location.dart';
import 'topic.dart';

/// {@template pulumi_deviceregistry_asset_args_doc}
/// The set of arguments for Asset.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_asset_args_doc}
class AssetArgs {
  /// A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  final pulumi.Input<String> assetEndpointProfileRef;
  /// Asset name parameter.
  final pulumi.Input<String>? assetName;
  /// A set of key-value pairs that contain custom attributes set by the customer.
  final pulumi.Input<dynamic>? attributes;
  /// Array of datasets that are part of the asset. Each dataset describes the data points that make up the set.
  final pulumi.Input<List<Dataset>>? datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  final pulumi.Input<String>? defaultDatasetsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  final pulumi.Input<String>? defaultEventsConfiguration;
  /// Object that describes the default topic information for the asset.
  final pulumi.Input<Topic>? defaultTopic;
  /// Human-readable description of the asset.
  final pulumi.Input<String>? description;
  /// Reference to a list of discovered assets. Populated only if the asset has been created from discovery flow. Discovered asset names must be provided.
  final pulumi.Input<List<String>>? discoveredAssetRefs;
  /// Human-readable display name.
  final pulumi.Input<String>? displayName;
  /// Reference to the documentation.
  final pulumi.Input<String>? documentationUri;
  /// Enabled/Disabled status of the asset.
  final pulumi.Input<bool>? enabled;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final pulumi.Input<List<Event>>? events;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Asset id provided by the customer.
  final pulumi.Input<String>? externalAssetId;
  /// Revision number of the hardware.
  final pulumi.Input<String>? hardwareRevision;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Asset manufacturer name.
  final pulumi.Input<String>? manufacturer;
  /// Asset manufacturer URI.
  final pulumi.Input<String>? manufacturerUri;
  /// Asset model name.
  final pulumi.Input<String>? model;
  /// Asset product code.
  final pulumi.Input<String>? productCode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Asset serial number.
  final pulumi.Input<String>? serialNumber;
  /// Revision number of the software.
  final pulumi.Input<String>? softwareRevision;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AssetArgs].
  /// [assetEndpointProfileRef] A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  /// [assetName] Asset name parameter.
  /// [attributes] A set of key-value pairs that contain custom attributes set by the customer.
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
  /// [location] The geo-location where the resource lives
  /// [manufacturer] Asset manufacturer name.
  /// [manufacturerUri] Asset manufacturer URI.
  /// [model] Asset model name.
  /// [productCode] Asset product code.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serialNumber] Asset serial number.
  /// [softwareRevision] Revision number of the software.
  /// [tags] Resource tags.
  AssetArgs({
    required this.assetEndpointProfileRef,
    this.assetName,
    this.attributes,
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
    required this.extendedLocation,
    this.externalAssetId,
    this.hardwareRevision,
    this.location,
    this.manufacturer,
    this.manufacturerUri,
    this.model,
    this.productCode,
    required this.resourceGroupName,
    this.serialNumber,
    this.softwareRevision,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetEndpointProfileRef': assetEndpointProfileRef,
      'assetName': ?assetName,
      'attributes': ?attributes,
      'datasets': ?pulumi.Input.mapOptionalInputValue<List<Dataset>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<Dataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultTopic': ?pulumi.Input.mapOptionalInputValue<Topic, Map<String, dynamic>>(defaultTopic, (value) => value.toMap()),
      'description': ?description,
      'discoveredAssetRefs': ?discoveredAssetRefs,
      'displayName': ?displayName,
      'documentationUri': ?documentationUri,
      'enabled': ?enabled,
      'events': ?pulumi.Input.mapOptionalInputValue<List<Event>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<Event, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'externalAssetId': ?externalAssetId,
      'hardwareRevision': ?hardwareRevision,
      'location': ?location,
      'manufacturer': ?manufacturer,
      'manufacturerUri': ?manufacturerUri,
      'model': ?model,
      'productCode': ?productCode,
      'resourceGroupName': resourceGroupName,
      'serialNumber': ?serialNumber,
      'softwareRevision': ?softwareRevision,
      'tags': ?tags,
    };
  }

  factory AssetArgs.fromMap(Map<String, dynamic> map) {
    return AssetArgs(
      assetEndpointProfileRef: (map['assetEndpointProfileRef'] as String).input(),
      assetName: map['assetName'] == null ? null : (map['assetName']! as String).input(),
      attributes: map['attributes'] == null ? null : (map['attributes']!).input(),
      datasets: map['datasets'] == null ? null : (pulumi.Input.decodeList<Dataset>(map['datasets']!, (value) => Dataset.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultDatasetsConfiguration: map['defaultDatasetsConfiguration'] == null ? null : (map['defaultDatasetsConfiguration']! as String).input(),
      defaultEventsConfiguration: map['defaultEventsConfiguration'] == null ? null : (map['defaultEventsConfiguration']! as String).input(),
      defaultTopic: map['defaultTopic'] == null ? null : (Topic.fromMap((map['defaultTopic']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      discoveredAssetRefs: map['discoveredAssetRefs'] == null ? null : ((map['discoveredAssetRefs']! as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      documentationUri: map['documentationUri'] == null ? null : (map['documentationUri']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      events: map['events'] == null ? null : (pulumi.Input.decodeList<Event>(map['events']!, (value) => Event.fromMap((value as Map).cast<String, dynamic>()))).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      externalAssetId: map['externalAssetId'] == null ? null : (map['externalAssetId']! as String).input(),
      hardwareRevision: map['hardwareRevision'] == null ? null : (map['hardwareRevision']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      manufacturer: map['manufacturer'] == null ? null : (map['manufacturer']! as String).input(),
      manufacturerUri: map['manufacturerUri'] == null ? null : (map['manufacturerUri']! as String).input(),
      model: map['model'] == null ? null : (map['model']! as String).input(),
      productCode: map['productCode'] == null ? null : (map['productCode']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber']! as String).input(),
      softwareRevision: map['softwareRevision'] == null ? null : (map['softwareRevision']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

