// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSolution.
class GetSolutionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A list of components
  final List<ComponentPropertiesResponse>? components;
  /// Edge location of the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Version of the particular resource.
  final String? version;

  /// Creates a new [GetSolutionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [components] A list of components
  /// [extendedLocation] Edge location of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the particular resource.
  GetSolutionResult({
    required this.azureApiVersion,
    this.components,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'components': ?components == null ? null : pulumi.Input.encodeList<ComponentPropertiesResponse, Map<String, dynamic>>(components!, (value) => value.toMap()),
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': ?version,
    };
  }

  factory GetSolutionResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      components: map['components'] == null ? null : pulumi.Input.decodeList<ComponentPropertiesResponse>(map['components'], (value) => ComponentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

