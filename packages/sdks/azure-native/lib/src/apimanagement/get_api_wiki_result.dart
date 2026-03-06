// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wiki_documentation_contract_response.dart';

/// Result data returned by getApiWiki.
class GetApiWikiResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Collection wiki documents included into this wiki.
  final List<WikiDocumentationContractResponse>? documents;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApiWikiResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [documents] Collection wiki documents included into this wiki.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetApiWikiResult({
    required this.azureApiVersion,
    this.documents,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'documents': ?(() { final guardedValue = documents; if (guardedValue == null) return null; return pulumi.Input.encodeList<WikiDocumentationContractResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetApiWikiResult.fromMap(Map<String, dynamic> map) {
    return GetApiWikiResult(
      azureApiVersion: map['azureApiVersion'] as String,
      documents: (() { final guardedValue = map['documents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WikiDocumentationContractResponse>(guardedValue, (value) => WikiDocumentationContractResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

