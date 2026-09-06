// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_hostname_binding_certificate_response.dart';
import 'gateway_hostname_binding_key_vault_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApiGatewayHostnameBinding.
class GetApiGatewayHostnameBindingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The hostnames of the data-plane gateway to which requests can be sent.
  final GatewayHostnameBindingCertificateResponse? certificate;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String? eTag;
  /// The default hostname of the data-plane gateway.
  final String? hostname;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The link to the API Management service workspace.
  final GatewayHostnameBindingKeyVaultResponse? keyVault;
  /// The name of the resource
  final String? name;
  /// The current provisioning state of the API Management gateway hostname binding.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetApiGatewayHostnameBindingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificate] The hostnames of the data-plane gateway to which requests can be sent.
  /// [eTag] If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [hostname] The default hostname of the data-plane gateway.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [keyVault] The link to the API Management service workspace.
  /// [name] The name of the resource
  /// [provisioningState] The current provisioning state of the API Management gateway hostname binding.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetApiGatewayHostnameBindingResult({
    this.azureApiVersion,
    this.certificate,
    this.eTag,
    this.hostname,
    this.id,
    this.keyVault,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'certificate': ?certificate?.toMap(),
      'eTag': ?eTag,
      'hostname': ?hostname,
      'id': ?id,
      'keyVault': ?keyVault?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetApiGatewayHostnameBindingResult.fromMap(Map<String, dynamic> map) {
    return GetApiGatewayHostnameBindingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return GatewayHostnameBindingCertificateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return GatewayHostnameBindingKeyVaultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
