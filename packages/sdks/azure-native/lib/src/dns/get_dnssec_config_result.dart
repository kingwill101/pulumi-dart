// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_key_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDnssecConfig.
class GetDnssecConfigResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The etag of the DNSSEC configuration.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Provisioning State of the DNSSEC configuration.
  final String? provisioningState;
  /// The list of signing keys.
  final List<SigningKeyResponse>? signingKeys;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDnssecConfigResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The etag of the DNSSEC configuration.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] Provisioning State of the DNSSEC configuration.
  /// [signingKeys] The list of signing keys.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDnssecConfigResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.provisioningState,
    this.signingKeys,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'signingKeys': ?(() { final guardedValue = signingKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<SigningKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDnssecConfigResult.fromMap(Map<String, dynamic> map) {
    return GetDnssecConfigResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signingKeys: (() { final guardedValue = map['signingKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SigningKeyResponse>(guardedValue, (value) => SigningKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
