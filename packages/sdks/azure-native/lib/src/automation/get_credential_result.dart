// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCredential.
class GetCredentialResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Gets the creation time.
  final String creationTime;

  /// Gets or sets the description.
  final String? description;

  /// Fully qualified resource Id for the resource
  final String id;

  /// Gets the last modified time.
  final String lastModifiedTime;

  /// The name of the resource
  final String name;

  /// The type of the resource.
  final String type;

  /// Gets the user name of the credential.
  final String userName;

  /// Creates a new [GetCredentialResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets the creation time.
  /// [description] Gets or sets the description.
  /// [id] Fully qualified resource Id for the resource
  /// [lastModifiedTime] Gets the last modified time.
  /// [name] The name of the resource
  /// [type] The type of the resource.
  /// [userName] Gets the user name of the credential.
  GetCredentialResult({
    required this.azureApiVersion,
    required this.creationTime,
    this.description,
    required this.id,
    required this.lastModifiedTime,
    required this.name,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'description': ?description,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'type': type,
      'userName': userName,
    };
  }

  factory GetCredentialResult.fromMap(Map<String, dynamic> map) {
    return GetCredentialResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      userName: map['userName'] as String,
    );
  }
}
