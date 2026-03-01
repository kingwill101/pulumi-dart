// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';
import 'tracked_resource_response_system_data.dart';

/// Result data returned by getAzureTrafficCollector.
class GetAzureTrafficCollectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Collector Policies for Azure Traffic Collector.
  final List<ResourceReferenceResponse> collectorPolicies;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// The provisioning state of the application rule collection resource.
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final TrackedResourceResponseSystemData systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// The virtualHub to which the Azure Traffic Collector belongs.
  final ResourceReferenceResponse? virtualHub;

  /// Creates a new [GetAzureTrafficCollectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [collectorPolicies] Collector Policies for Azure Traffic Collector.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the application rule collection resource.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualHub] The virtualHub to which the Azure Traffic Collector belongs.
  GetAzureTrafficCollectorResult({
    required this.azureApiVersion,
    required this.collectorPolicies,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'collectorPolicies': pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(collectorPolicies, (value) => value.toMap()),
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualHub': ?virtualHub == null ? null : virtualHub!.toMap(),
    };
  }

  factory GetAzureTrafficCollectorResult.fromMap(Map<String, dynamic> map) {
    return GetAzureTrafficCollectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      collectorPolicies: pulumi.Input.decodeList<ResourceReferenceResponse>(map['collectorPolicies'], (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: TrackedResourceResponseSystemData.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualHub: map['virtualHub'] == null ? null : ResourceReferenceResponse.fromMap((map['virtualHub'] as Map).cast<String, dynamic>()),
    );
  }
}

