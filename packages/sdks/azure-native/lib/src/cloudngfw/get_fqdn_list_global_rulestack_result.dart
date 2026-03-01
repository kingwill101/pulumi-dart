// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getFqdnListGlobalRulestack.
class GetFqdnListGlobalRulestackResult {
  /// comment for this object
  final String? auditComment;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// fqdn object description
  final String? description;
  /// etag info
  final String? etag;
  /// fqdn list
  final List<String> fqdnList;
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

  /// Creates a new [GetFqdnListGlobalRulestackResult].
  /// [auditComment] comment for this object
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] fqdn object description
  /// [etag] etag info
  /// [fqdnList] fqdn list
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetFqdnListGlobalRulestackResult({
    this.auditComment,
    required this.azureApiVersion,
    this.description,
    this.etag,
    required this.fqdnList,
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
      'description': ?description,
      'etag': ?etag,
      'fqdnList': fqdnList,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetFqdnListGlobalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetFqdnListGlobalRulestackResult(
      auditComment: map['auditComment'] == null ? null : map['auditComment'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      fqdnList: (map['fqdnList'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

