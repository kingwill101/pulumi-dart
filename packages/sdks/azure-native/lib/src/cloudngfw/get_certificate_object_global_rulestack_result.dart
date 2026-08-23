// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCertificateObjectGlobalRulestack.
class GetCertificateObjectGlobalRulestackResult {
  /// comment for this object
  final String? auditComment;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// use certificate self signed
  final String certificateSelfSigned;
  /// Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  final String? certificateSignerResourceId;
  /// user description for this object
  final String? description;
  /// read only string representing last create or update
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCertificateObjectGlobalRulestackResult].
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
  const GetCertificateObjectGlobalRulestackResult({
    this.auditComment,
    required this.azureApiVersion,
    required this.certificateSelfSigned,
    this.certificateSignerResourceId,
    this.description,
    this.etag,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'azureApiVersion': azureApiVersion,
      'certificateSelfSigned': certificateSelfSigned,
      'certificateSignerResourceId': ?certificateSignerResourceId,
      'description': ?description,
      'etag': ?etag,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetCertificateObjectGlobalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateObjectGlobalRulestackResult(
      auditComment: (() { final guardedValue = map['auditComment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      certificateSelfSigned: map['certificateSelfSigned'] as String,
      certificateSignerResourceId: (() { final guardedValue = map['certificateSignerResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
