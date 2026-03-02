// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wiki_documentation_contract_response.dart';

/// Result data returned by getProductWiki.
class GetProductWikiResult {
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

  /// Creates a new [GetProductWikiResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [documents] Collection wiki documents included into this wiki.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetProductWikiResult({
    required this.azureApiVersion,
    this.documents,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'documents': ?documents == null ? null : pulumi.Input.encodeList<WikiDocumentationContractResponse, Map<String, dynamic>>(documents!, (value) => value.toMap()),
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetProductWikiResult.fromMap(Map<String, dynamic> map) {
    return GetProductWikiResult(
      azureApiVersion: map['azureApiVersion'] as String,
      documents: map['documents'] == null ? null : pulumi.Input.decodeList<WikiDocumentationContractResponse>(map['documents']!, (value) => WikiDocumentationContractResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

