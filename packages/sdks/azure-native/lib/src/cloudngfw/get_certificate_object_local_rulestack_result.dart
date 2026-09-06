// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCertificateObjectLocalRulestack.
class GetCertificateObjectLocalRulestackResult {
  /// comment for this object
  final String? auditComment;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// use certificate self signed
  final String? certificateSelfSigned;
  /// Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  final String? certificateSignerResourceId;
  /// user description for this object
  final String? description;
  /// read only string representing last create or update
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCertificateObjectLocalRulestackResult].
  /// [auditComment] comment for this object
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificateSelfSigned] use certificate self signed
  /// [certificateSignerResourceId] Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  /// [description] user description for this object
  /// [etag] read only string representing last create or update
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCertificateObjectLocalRulestackResult({
    this.auditComment,
    this.azureApiVersion,
    this.certificateSelfSigned,
    this.certificateSignerResourceId,
    this.description,
    this.etag,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'azureApiVersion': ?azureApiVersion,
      'certificateSelfSigned': ?certificateSelfSigned,
      'certificateSignerResourceId': ?certificateSignerResourceId,
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCertificateObjectLocalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateObjectLocalRulestackResult(
      auditComment: (() { final guardedValue = map['auditComment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateSelfSigned: (() { final guardedValue = map['certificateSelfSigned']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateSignerResourceId: (() { final guardedValue = map['certificateSignerResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
