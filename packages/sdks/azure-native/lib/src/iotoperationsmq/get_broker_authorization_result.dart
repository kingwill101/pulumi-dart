// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_config_response.dart';
import 'extended_location_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBrokerAuthorization.
class GetBrokerAuthorizationResult {
  /// The list of authorization policies supported by the Authorization Resource.
  final AuthorizationConfigResponse? authorizationPolicies;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Extended Location
  final ExtendedLocationPropertyResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The array of listener Resources it supports.
  final List<String>? listenerRef;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetBrokerAuthorizationResult({
    this.authorizationPolicies,
    this.azureApiVersion,
    this.extendedLocation,
    this.id,
    this.listenerRef,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicies': ?authorizationPolicies?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'listenerRef': ?listenerRef,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetBrokerAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerAuthorizationResult(
      authorizationPolicies: (() { final guardedValue = map['authorizationPolicies']; if (guardedValue == null) return null; return AuthorizationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listenerRef: (() { final guardedValue = map['listenerRef']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
