// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wiki_documentation_contract_response.dart';

/// Result data returned by getProductWiki.
class GetProductWikiResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Collection wiki documents included into this wiki.
  final List<WikiDocumentationContractResponse>? documents;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetProductWikiResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [documents] Collection wiki documents included into this wiki.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetProductWikiResult({
    this.azureApiVersion,
    this.documents,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'documents': ?(() { final guardedValue = documents; if (guardedValue == null) return null; return pulumi.Input.encodeList<WikiDocumentationContractResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetProductWikiResult.fromMap(Map<String, dynamic> map) {
    return GetProductWikiResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documents: (() { final guardedValue = map['documents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WikiDocumentationContractResponse>(guardedValue, (value) => WikiDocumentationContractResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
