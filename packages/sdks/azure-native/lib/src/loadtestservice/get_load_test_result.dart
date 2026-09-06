// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getLoadTest.
class GetLoadTestResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource data plane URI.
  final String? dataPlaneURI;
  /// Description of the resource.
  final String? description;
  /// CMK Encryption property.
  final EncryptionPropertiesResponse? encryption;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Resource provisioning state.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetLoadTestResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataPlaneURI] Resource data plane URI.
  /// [description] Description of the resource.
  /// [encryption] CMK Encryption property.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Resource provisioning state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetLoadTestResult({
    this.azureApiVersion,
    this.dataPlaneURI,
    this.description,
    this.encryption,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataPlaneURI': ?dataPlaneURI,
      'description': ?description,
      'encryption': ?encryption?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetLoadTestResult.fromMap(Map<String, dynamic> map) {
    return GetLoadTestResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataPlaneURI: (() { final guardedValue = map['dataPlaneURI']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
