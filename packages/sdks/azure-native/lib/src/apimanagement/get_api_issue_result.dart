// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiIssue.
class GetApiIssueResult {
  /// A resource identifier for the API the issue was created for.
  final String? apiId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Date and time when the issue was created.
  final String? createdDate;
  /// Text describing the issue.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Status of the issue.
  final String? state;
  /// The issue title.
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// A resource identifier for the user created the issue.
  final String? userId;

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
    this.azureApiVersion,
    this.createdDate,
    this.description,
    this.id,
    this.name,
    this.state,
    this.title,
    this.type,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'azureApiVersion': ?azureApiVersion,
      'createdDate': ?createdDate,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'state': ?state,
      'title': ?title,
      'type': ?type,
      'userId': ?userId,
    };
  }

  factory GetApiIssueResult.fromMap(Map<String, dynamic> map) {
    return GetApiIssueResult(
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
