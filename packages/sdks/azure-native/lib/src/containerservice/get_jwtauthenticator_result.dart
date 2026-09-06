// ignore_for_file: unused_element, unnecessary_cast

import 'jwtauthenticator_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getJWTAuthenticator.
class GetJWTAuthenticatorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The properties of JWTAuthenticator. For details on how to configure the properties of a JWT authenticator, please refer to the Kubernetes documentation: https://kubernetes.io/docs/reference/access-authn-authz/authentication/#using-authentication-configuration. Please note that not all fields available in the Kubernetes documentation are supported by AKS. For troubleshooting, please see https://aka.ms/aks-external-issuers-docs.
  final JWTAuthenticatorPropertiesResponse? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetJWTAuthenticatorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [properties] The properties of JWTAuthenticator. For details on how to configure the properties of a JWT authenticator, please refer to the Kubernetes documentation: https://kubernetes.io/docs/reference/access-authn-authz/authentication/#using-authentication-configuration. Please note that not all fields available in the Kubernetes documentation are supported by AKS. For troubleshooting, please see https://aka.ms/aks-external-issuers-docs.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetJWTAuthenticatorResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetJWTAuthenticatorResult.fromMap(Map<String, dynamic> map) {
    return GetJWTAuthenticatorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return JWTAuthenticatorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
