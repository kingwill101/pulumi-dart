// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_config_response.dart';
import 'extended_location_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBrokerAuthorization.
class GetBrokerAuthorizationResult {
  /// The list of authorization policies supported by the Authorization Resource.
  final AuthorizationConfigResponse authorizationPolicies;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Extended Location
  final ExtendedLocationPropertyResponse extendedLocation;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The array of listener Resources it supports.
  final List<String> listenerRef;

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

  /// Creates a new [GetBrokerAuthorizationResult].
  /// [authorizationPolicies] The list of authorization policies supported by the Authorization Resource.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] Extended Location
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [listenerRef] The array of listener Resources it supports.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBrokerAuthorizationResult({
    required this.authorizationPolicies,
    required this.azureApiVersion,
    required this.extendedLocation,
    required this.id,
    required this.listenerRef,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicies': authorizationPolicies.toMap(),
      'azureApiVersion': azureApiVersion,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'listenerRef': listenerRef,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetBrokerAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerAuthorizationResult(
      authorizationPolicies: AuthorizationConfigResponse.fromMap(
        (map['authorizationPolicies']! as Map).cast<String, dynamic>(),
      ),
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: ExtendedLocationPropertyResponse.fromMap(
        (map['extendedLocation']! as Map).cast<String, dynamic>(),
      ),
      id: map['id'] as String,
      listenerRef: (map['listenerRef'] as List).cast<String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
