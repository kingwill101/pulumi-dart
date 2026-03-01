// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiIssueComment.
class GetApiIssueCommentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Date and time when the comment was created.
  final String? createdDate;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Comment text.
  final String text;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// A resource identifier for the user who left the comment.
  final String userId;

  /// Creates a new [GetApiIssueCommentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] Date and time when the comment was created.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [text] Comment text.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userId] A resource identifier for the user who left the comment.
  GetApiIssueCommentResult({
    required this.azureApiVersion,
    this.createdDate,
    required this.id,
    required this.name,
    required this.text,
    required this.type,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdDate': ?createdDate,
      'id': id,
      'name': name,
      'text': text,
      'type': type,
      'userId': userId,
    };
  }

  factory GetApiIssueCommentResult.fromMap(Map<String, dynamic> map) {
    return GetApiIssueCommentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] == null ? null : map['createdDate'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      text: map['text'] as String,
      type: map['type'] as String,
      userId: map['userId'] as String,
    );
  }
}

