// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNotebookWorkspace.
class GetNotebookWorkspaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The unique resource identifier of the database account.
  final String id;

  /// The name of the database account.
  final String name;

  /// Specifies the endpoint of Notebook server.
  final String notebookServerEndpoint;

  /// Status of the notebook workspace. Possible values are: Creating, Online, Deleting, Failed, Updating.
  final String status;

  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetNotebookWorkspaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the database account.
  /// [name] The name of the database account.
  /// [notebookServerEndpoint] Specifies the endpoint of Notebook server.
  /// [status] Status of the notebook workspace. Possible values are: Creating, Online, Deleting, Failed, Updating.
  /// [type] The type of Azure resource.
  GetNotebookWorkspaceResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.notebookServerEndpoint,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'notebookServerEndpoint': notebookServerEndpoint,
      'status': status,
      'type': type,
    };
  }

  factory GetNotebookWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetNotebookWorkspaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      notebookServerEndpoint: map['notebookServerEndpoint'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}
