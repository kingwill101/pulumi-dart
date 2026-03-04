// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPrefixListGlobalRulestack.
class GetPrefixListGlobalRulestackResult {
  /// comment for this object
  final String? auditComment;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// prefix description
  final String? description;

  /// etag info
  final String? etag;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// prefix list
  final List<String> prefixList;

  /// Provisioning state of the resource.
  final String provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrefixListGlobalRulestackResult].
  /// [auditComment] comment for this object
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] prefix description
  /// [etag] etag info
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [prefixList] prefix list
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrefixListGlobalRulestackResult({
    this.auditComment,
    required this.azureApiVersion,
    this.description,
    this.etag,
    required this.id,
    required this.name,
    required this.prefixList,
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
      'id': id,
      'name': name,
      'prefixList': prefixList,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPrefixListGlobalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetPrefixListGlobalRulestackResult(
      auditComment: (() {
        final guardedValue = map['auditComment'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      prefixList: (map['prefixList'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
