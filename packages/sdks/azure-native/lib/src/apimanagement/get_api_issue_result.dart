// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiIssue.
class GetApiIssueResult {
  /// A resource identifier for the API the issue was created for.
  final String? apiId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Date and time when the issue was created.
  final String? createdDate;
  /// Text describing the issue.
  final String description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Status of the issue.
  final String? state;
  /// The issue title.
  final String title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// A resource identifier for the user created the issue.
  final String userId;

  /// Creates a new [GetApiIssueResult].
  /// [apiId] A resource identifier for the API the issue was created for.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] Date and time when the issue was created.
  /// [description] Text describing the issue.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [state] Status of the issue.
  /// [title] The issue title.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userId] A resource identifier for the user created the issue.
  const GetApiIssueResult({
    this.apiId,
    required this.azureApiVersion,
    this.createdDate,
    required this.description,
    required this.id,
    required this.name,
    this.state,
    required this.title,
    required this.type,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'azureApiVersion': azureApiVersion,
      'createdDate': ?createdDate,
      'description': description,
      'id': id,
      'name': name,
      'state': ?state,
      'title': title,
      'type': type,
      'userId': userId,
    };
  }

  factory GetApiIssueResult.fromMap(Map<String, dynamic> map) {
    return GetApiIssueResult(
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      title: map['title'] as String,
      type: map['type'] as String,
      userId: map['userId'] as String,
    );
  }
}

