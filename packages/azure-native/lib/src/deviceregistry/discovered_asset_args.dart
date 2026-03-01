// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_dataset.dart';
import 'discovered_event.dart';
import 'extended_location.dart';
import 'topic.dart';

/// {@template pulumi_deviceregistry_discovered_asset_args_doc}
/// The set of arguments for DiscoveredAsset.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_discovered_asset_args_doc}
class DiscoveredAssetArgs {
  /// A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  final pulumi.Input<String> assetEndpointProfileRef;
  /// Array of datasets that are part of the asset. Each dataset spec describes the data points that make up the set.
  final pulumi.Input<List<DiscoveredDataset>>? datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  final pulumi.Input<String>? defaultDatasetsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  final pulumi.Input<String>? defaultEventsConfiguration;
  /// Object that describes the default topic information for the asset.
  final pulumi.Input<Topic>? defaultTopic;
  /// Discovered Asset name parameter.
  final pulumi.Input<String>? discoveredAssetName;
  /// Identifier used to detect changes in the asset.
  final pulumi.Input<String> discoveryId;
  /// Reference to the documentation.
  final pulumi.Input<String>? documentationUri;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final pulumi.Input<List<DiscoveredEvent>>? events;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
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
  /// An integer that is incremented each time the resource is modified.
  final pulumi.Input<double> version;

  /// Creates a new [DiscoveredAssetArgs].
  /// [assetEndpointProfileRef] A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  /// [datasets] Array of datasets that are part of the asset. Each dataset spec describes the data points that make up the set.
  /// [defaultDatasetsConfiguration] Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  /// [defaultEventsConfiguration] Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  /// [defaultTopic] Object that describes the default topic information for the asset.
  /// [discoveredAssetName] Discovered Asset name parameter.
  /// [discoveryId] Identifier used to detect changes in the asset.
  /// [documentationUri] Reference to the documentation.
  /// [events] Array of events that are part of the asset. Each event can have per-event configuration.
  /// [extendedLocation] The extended location.
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
  /// [version] An integer that is incremented each time the resource is modified.
  DiscoveredAssetArgs({
    required String assetEndpointProfileRef,
    List<DiscoveredDataset>? datasets,
    String? defaultDatasetsConfiguration,
    String? defaultEventsConfiguration,
    Topic? defaultTopic,
    String? discoveredAssetName,
    required String discoveryId,
    String? documentationUri,
    List<DiscoveredEvent>? events,
    required ExtendedLocation extendedLocation,
    String? hardwareRevision,
    String? location,
    String? manufacturer,
    String? manufacturerUri,
    String? model,
    String? productCode,
    required String resourceGroupName,
    String? serialNumber,
    String? softwareRevision,
    Map<String, String>? tags,
    required double version,
  }) :
      assetEndpointProfileRef = pulumi.Input.asInput<String>(assetEndpointProfileRef),
      datasets = pulumi.Input.asOptionalInput<List<DiscoveredDataset>>(datasets),
      defaultDatasetsConfiguration = pulumi.Input.asOptionalInput<String>(defaultDatasetsConfiguration),
      defaultEventsConfiguration = pulumi.Input.asOptionalInput<String>(defaultEventsConfiguration),
      defaultTopic = pulumi.Input.asOptionalInput<Topic>(defaultTopic),
      discoveredAssetName = pulumi.Input.asOptionalInput<String>(discoveredAssetName),
      discoveryId = pulumi.Input.asInput<String>(discoveryId),
      documentationUri = pulumi.Input.asOptionalInput<String>(documentationUri),
      events = pulumi.Input.asOptionalInput<List<DiscoveredEvent>>(events),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      hardwareRevision = pulumi.Input.asOptionalInput<String>(hardwareRevision),
      location = pulumi.Input.asOptionalInput<String>(location),
      manufacturer = pulumi.Input.asOptionalInput<String>(manufacturer),
      manufacturerUri = pulumi.Input.asOptionalInput<String>(manufacturerUri),
      model = pulumi.Input.asOptionalInput<String>(model),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serialNumber = pulumi.Input.asOptionalInput<String>(serialNumber),
      softwareRevision = pulumi.Input.asOptionalInput<String>(softwareRevision),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asInput<double>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetEndpointProfileRef': assetEndpointProfileRef,
      'datasets': ?pulumi.Input.mapOptionalInputValue<List<DiscoveredDataset>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<DiscoveredDataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultTopic': ?pulumi.Input.mapOptionalInputValue<Topic, Map<String, dynamic>>(defaultTopic, (value) => value.toMap()),
      'discoveredAssetName': ?discoveredAssetName,
      'discoveryId': discoveryId,
      'documentationUri': ?documentationUri,
      'events': ?pulumi.Input.mapOptionalInputValue<List<DiscoveredEvent>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<DiscoveredEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
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
      'version': version,
    };
  }

  factory DiscoveredAssetArgs.fromMap(Map<String, dynamic> map) {
    return DiscoveredAssetArgs(
      assetEndpointProfileRef: map['assetEndpointProfileRef'] as String,
      datasets: map['datasets'] == null ? null : pulumi.Input.decodeList<DiscoveredDataset>(map['datasets'], (value) => DiscoveredDataset.fromMap((value as Map).cast<String, dynamic>())),
      defaultDatasetsConfiguration: map['defaultDatasetsConfiguration'] == null ? null : map['defaultDatasetsConfiguration'] as String,
      defaultEventsConfiguration: map['defaultEventsConfiguration'] == null ? null : map['defaultEventsConfiguration'] as String,
      defaultTopic: map['defaultTopic'] == null ? null : Topic.fromMap((map['defaultTopic'] as Map).cast<String, dynamic>()),
      discoveredAssetName: map['discoveredAssetName'] == null ? null : map['discoveredAssetName'] as String,
      discoveryId: map['discoveryId'] as String,
      documentationUri: map['documentationUri'] == null ? null : map['documentationUri'] as String,
      events: map['events'] == null ? null : pulumi.Input.decodeList<DiscoveredEvent>(map['events'], (value) => DiscoveredEvent.fromMap((value as Map).cast<String, dynamic>())),
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      hardwareRevision: map['hardwareRevision'] == null ? null : map['hardwareRevision'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      manufacturer: map['manufacturer'] == null ? null : map['manufacturer'] as String,
      manufacturerUri: map['manufacturerUri'] == null ? null : map['manufacturerUri'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      productCode: map['productCode'] == null ? null : map['productCode'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      softwareRevision: map['softwareRevision'] == null ? null : map['softwareRevision'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as double,
    );
  }
}

