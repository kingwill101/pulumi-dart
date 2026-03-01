// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_status_response.dart';
import 'dataset_response.dart';
import 'event_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'topic_response.dart';

/// Result data returned by getAsset.
class GetAssetResult {
  /// A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  final String assetEndpointProfileRef;
  /// A set of key-value pairs that contain custom attributes set by the customer.
  final dynamic attributes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Array of datasets that are part of the asset. Each dataset describes the data points that make up the set.
  final List<DatasetResponse>? datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  final String? defaultDatasetsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  final String? defaultEventsConfiguration;
  /// Object that describes the default topic information for the asset.
  final TopicResponse? defaultTopic;
  /// Human-readable description of the asset.
  final String? description;
  /// Reference to a list of discovered assets. Populated only if the asset has been created from discovery flow. Discovered asset names must be provided.
  final List<String>? discoveredAssetRefs;
  /// Human-readable display name.
  final String? displayName;
  /// Reference to the documentation.
  final String? documentationUri;
  /// Enabled/Disabled status of the asset.
  final bool? enabled;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  final List<EventResponse>? events;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// Asset id provided by the customer.
  final String? externalAssetId;
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
  /// Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  final AssetStatusResponse status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Globally unique, immutable, non-reusable id.
  final String uuid;
  /// An integer that is incremented each time the resource is modified.
  final double version;

  /// Creates a new [GetAssetResult].
  /// [assetEndpointProfileRef] A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  /// [attributes] A set of key-value pairs that contain custom attributes set by the customer.
  /// [azureApiVersion] The Azure API version of the resource.
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
  /// [status] Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] Globally unique, immutable, non-reusable id.
  /// [version] An integer that is incremented each time the resource is modified.
  GetAssetResult({
    required this.assetEndpointProfileRef,
    this.attributes,
    required this.azureApiVersion,
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
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uuid,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetEndpointProfileRef': assetEndpointProfileRef,
      'attributes': ?attributes,
      'azureApiVersion': azureApiVersion,
      'datasets': ?datasets == null ? null : pulumi.Input.encodeList<DatasetResponse, Map<String, dynamic>>(datasets!, (value) => value.toMap()),
      'defaultDatasetsConfiguration': ?defaultDatasetsConfiguration,
      'defaultEventsConfiguration': ?defaultEventsConfiguration,
      'defaultTopic': ?defaultTopic == null ? null : defaultTopic!.toMap(),
      'description': ?description,
      'discoveredAssetRefs': ?discoveredAssetRefs,
      'displayName': ?displayName,
      'documentationUri': ?documentationUri,
      'enabled': ?enabled,
      'events': ?events == null ? null : pulumi.Input.encodeList<EventResponse, Map<String, dynamic>>(events!, (value) => value.toMap()),
      'extendedLocation': extendedLocation.toMap(),
      'externalAssetId': ?externalAssetId,
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
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
      'version': version,
    };
  }

  factory GetAssetResult.fromMap(Map<String, dynamic> map) {
    return GetAssetResult(
      assetEndpointProfileRef: map['assetEndpointProfileRef'] as String,
      attributes: map['attributes'] == null ? null : map['attributes'],
      azureApiVersion: map['azureApiVersion'] as String,
      datasets: map['datasets'] == null ? null : pulumi.Input.decodeList<DatasetResponse>(map['datasets'], (value) => DatasetResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultDatasetsConfiguration: map['defaultDatasetsConfiguration'] == null ? null : map['defaultDatasetsConfiguration'] as String,
      defaultEventsConfiguration: map['defaultEventsConfiguration'] == null ? null : map['defaultEventsConfiguration'] as String,
      defaultTopic: map['defaultTopic'] == null ? null : TopicResponse.fromMap((map['defaultTopic'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      discoveredAssetRefs: map['discoveredAssetRefs'] == null ? null : (map['discoveredAssetRefs'] as List).cast<String>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      documentationUri: map['documentationUri'] == null ? null : map['documentationUri'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      events: map['events'] == null ? null : pulumi.Input.decodeList<EventResponse>(map['events'], (value) => EventResponse.fromMap((value as Map).cast<String, dynamic>())),
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      externalAssetId: map['externalAssetId'] == null ? null : map['externalAssetId'] as String,
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
      status: AssetStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      version: map['version'] as double,
    );
  }
}

