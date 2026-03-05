// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDocumentation.
class GetDocumentationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Markdown documentation content.
  final String? content;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// documentation title.
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDocumentationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [content] Markdown documentation content.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [title] documentation title.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDocumentationResult({
    required this.azureApiVersion,
    this.content,
    required this.id,
    required this.name,
    this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'content': ?content,
      'id': id,
      'name': name,
      'title': ?title,
      'type': type,
    };
  }

  factory GetDocumentationResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

