// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_dataset_response.dart';
import 'discovered_event_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'topic_response.dart';

/// Result data returned by getDiscoveredAsset.
class GetDiscoveredAssetResult {
  /// A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  final String assetEndpointProfileRef;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Array of datasets that are part of the asset. Each dataset spec describes the data points that make up the set.
  final List<DiscoveredDatasetResponse>? datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  final String? defaultDatasetsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  final String? defaultEventsConfiguration;
  /// Object that describes the default topic information for the asset.
  final TopicResponse? defaultTopic;
  /// Identifier used to detect changes in the asset.
  final String discoveryId;
  /// Reference to the documentation.
  final String? documentationUri;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final List<DiscoveredEventResponse>? events;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// Revision number of the hardware.
  final String? hardwareRevision;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Asset manufacturer name.
  final String? manufacturer;
  /// Asset manufacturer URI.
  final String? manufacturerUri;
  /// Asset model name.
  final String? model;
  /// The name of the resource
  final String name;
  /// Asset product code.
  final String? productCode;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Asset serial number.
  final String? serialNumber;
  /// Revision number of the software.
  final String? softwareRevision;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// An integer that is incremented each time the resource is modified.
  final double version;

  /// Creates a new [GetDiscoveredAssetResult].
  /// [assetEndpointProfileRef] A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [datasets] Array of datasets that are part of the asset. Each dataset spec describes the data points that make up the set.
  /// [defaultDatasetsConfiguration] Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  /// [defaultEventsConfiguration] Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  /// [defaultTopic] Object that describes the default topic information for the asset.
  /// [discoveryId] Identifier used to detect changes in the asset.
  /// [documentationUri] Reference to the documentation.
  /// [events] Array of events that are part of the asset. Each event can have per-event configuration.
  /// [extendedLocation] The extended location.
  /// [hardwareRevision] Revision number of the hardware.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [manufacturer] Asset manufacturer name.
  /// [manufacturerUri] Asset manufacturer URI.
  /// [model] Asset model name.
  /// [name] The name of the resource
  /// [productCode] Asset product code.
  /// [provisioningState] Provisioning state of the resource.
  /// [serialNumber] Asset serial number.
  /// [softwareRevision] Revision number of the software.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] An integer that is incremented each time the resource is modified.
  GetDiscoveredAssetResult({
    required this.assetEndpointProfileRef,
    required this.azureApiVersion,
    this.datasets,
    this.defaultDatasetsConfiguration,
    this.defaultEventsConfiguration,
    this.defaultTopic,
    required this.discoveryId,
    this.documentationUri,
    this.events,
    required this.extendedLocation,
    this.hardwareRevision,
    required this.id,
    required this.location,
    this.manufacturer,
    this.manufacturerUri,
    this.model,
    required this.name,
    this.productCode,
    required this.provisioningState,
    this.serialNumber,
    this.softwareRevision,
    required this.systemData,
    this.tags,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetEndpointProfileRef': assetEndpointProfileRef,
      'azureApiVersion': azureApiVersion,
      'datasets': ?datasets == null ? null : pulumi.Input.encodeList<DiscoveredDatasetResponse, Map<String, dynamic>>(datasets!, (value) => value.toMap()),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultTopic': ?defaultTopic == null ? null : defaultTopic!.toMap(),
      'discoveryId': discoveryId,
      'documentationUri': ?documentationUri,
      'events': ?events == null ? null : pulumi.Input.encodeList<DiscoveredEventResponse, Map<String, dynamic>>(events!, (value) => value.toMap()),
      'extendedLocation': extendedLocation.toMap(),
      'hardwareRevision': ?hardwareRevision,
      'id': id,
      'location': location,
      'manufacturer': ?manufacturer,
      'manufacturerUri': ?manufacturerUri,
      'model': ?model,
      'name': name,
      'productCode': ?productCode,
      'provisioningState': provisioningState,
      'serialNumber': ?serialNumber,
      'softwareRevision': ?softwareRevision,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': version,
    };
  }

  factory GetDiscoveredAssetResult.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredAssetResult(
      assetEndpointProfileRef: map['assetEndpointProfileRef'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      datasets: map['datasets'] == null ? null : pulumi.Input.decodeList<DiscoveredDatasetResponse>(map['datasets'], (value) => DiscoveredDatasetResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultDatasetsConfiguration: map['defaultDatasetsConfiguration'] == null ? null : map['defaultDatasetsConfiguration'] as String,
      defaultEventsConfiguration: map['defaultEventsConfiguration'] == null ? null : map['defaultEventsConfiguration'] as String,
      defaultTopic: map['defaultTopic'] == null ? null : TopicResponse.fromMap((map['defaultTopic'] as Map).cast<String, dynamic>()),
      discoveryId: map['discoveryId'] as String,
      documentationUri: map['documentationUri'] == null ? null : map['documentationUri'] as String,
      events: map['events'] == null ? null : pulumi.Input.decodeList<DiscoveredEventResponse>(map['events'], (value) => DiscoveredEventResponse.fromMap((value as Map).cast<String, dynamic>())),
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      hardwareRevision: map['hardwareRevision'] == null ? null : map['hardwareRevision'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      manufacturer: map['manufacturer'] == null ? null : map['manufacturer'] as String,
      manufacturerUri: map['manufacturerUri'] == null ? null : map['manufacturerUri'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      name: map['name'] as String,
      productCode: map['productCode'] == null ? null : map['productCode'] as String,
      provisioningState: map['provisioningState'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      softwareRevision: map['softwareRevision'] == null ? null : map['softwareRevision'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] as double,
    );
  }
}

