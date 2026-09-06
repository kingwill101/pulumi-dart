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
  final pulumi.Input<String?>? assetName;
  /// A set of key-value pairs that contain custom attributes set by the customer.
  final pulumi.Input<dynamic>? attributes;
  /// Array of datasets that are part of the asset. Each dataset describes the data points that make up the set.
  final pulumi.Input<List<Dataset>?>? datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  final pulumi.Input<String?>? defaultDatasetsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  final pulumi.Input<String?>? defaultEventsConfiguration;
  /// Object that describes the default topic information for the asset.
  final pulumi.Input<Topic?>? defaultTopic;
  /// Human-readable description of the asset.
  final pulumi.Input<String?>? description;
  /// Reference to a list of discovered assets. Populated only if the asset has been created from discovery flow. Discovered asset names must be provided.
  final pulumi.Input<List<String>?>? discoveredAssetRefs;
  /// Human-readable display name.
  final pulumi.Input<String?>? displayName;
  /// Reference to the documentation.
  final pulumi.Input<String?>? documentationUri;
  /// Enabled/Disabled status of the asset.
  final pulumi.Input<bool?>? enabled;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final pulumi.Input<List<Event>?>? events;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Asset id provided by the customer.
  final pulumi.Input<String?>? externalAssetId;
  /// Revision number of the hardware.
  final pulumi.Input<String?>? hardwareRevision;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Asset manufacturer name.
  final pulumi.Input<String?>? manufacturer;
  /// Asset manufacturer URI.
  final pulumi.Input<String?>? manufacturerUri;
  /// Asset model name.
  final pulumi.Input<String?>? model;
  /// Asset product code.
  final pulumi.Input<String?>? productCode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Asset serial number.
  final pulumi.Input<String?>? serialNumber;
  /// Revision number of the software.
  final pulumi.Input<String?>? softwareRevision;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

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
  const AssetArgs({
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
      assetEndpointProfileRef: pulumi.Input.fromValue(map['assetEndpointProfileRef'] as String),
      assetName: (() { final guardedValue = map['assetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      datasets: (() { final guardedValue = map['datasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Dataset>(guardedValue, (value) => Dataset.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultDatasetsConfiguration: (() { final guardedValue = map['defaultDatasetsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultEventsConfiguration: (() { final guardedValue = map['defaultEventsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultTopic: (() { final guardedValue = map['defaultTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Topic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveredAssetRefs: (() { final guardedValue = map['discoveredAssetRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentationUri: (() { final guardedValue = map['documentationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Event>(guardedValue, (value) => Event.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      externalAssetId: (() { final guardedValue = map['externalAssetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardwareRevision: (() { final guardedValue = map['hardwareRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manufacturer: (() { final guardedValue = map['manufacturer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manufacturerUri: (() { final guardedValue = map['manufacturerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softwareRevision: (() { final guardedValue = map['softwareRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
