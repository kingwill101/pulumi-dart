// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getApiIssueAttachment.
class GetApiIssueAttachmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// An HTTP link or Base64-encoded binary data.
  final String content;

  /// Either 'link' if content is provided via an HTTP link or the MIME type of the Base64-encoded binary data provided in the 'content' property.
  final String contentFormat;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// Filename by which the binary data will be saved.
  final String title;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApiIssueAttachmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [content] An HTTP link or Base64-encoded binary data.
  /// [contentFormat] Either 'link' if content is provided via an HTTP link or the MIME type of the Base64-encoded binary data provided in the 'content' property.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [title] Filename by which the binary data will be saved.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetApiIssueAttachmentResult({
    required this.azureApiVersion,
    required this.content,
    required this.contentFormat,
    required this.id,
    required this.name,
    required this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'content': content,
      'contentFormat': contentFormat,
      'id': id,
      'name': name,
      'title': title,
      'type': type,
    };
  }

  factory GetApiIssueAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetApiIssueAttachmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      content: map['content'] as String,
      contentFormat: map['contentFormat'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      title: map['title'] as String,
      type: map['type'] as String,
    );
  }
}
