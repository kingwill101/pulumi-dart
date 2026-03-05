// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSourceControl.
class GetSourceControlResult {
  /// The auto sync of the source control. Default is false.
  final bool? autoSync;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The repo branch of the source control. Include branch as empty string for VsoTfvc.
  final String? branch;
  /// The creation time.
  final String? creationTime;
  /// The description.
  final String? description;
  /// The folder path of the source control.
  final String? folderPath;
  /// Fully qualified resource Id for the resource
  final String id;
  /// The last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String name;
  /// The auto publish of the source control. Default is true.
  final bool? publishRunbook;
  /// The repo url of the source control.
  final String? repoUrl;
  /// The source type. Must be one of VsoGit, VsoTfvc, GitHub.
  final String? sourceType;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetSourceControlResult].
  /// [autoSync] The auto sync of the source control. Default is false.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [branch] The repo branch of the source control. Include branch as empty string for VsoTfvc.
  /// [creationTime] The creation time.
  /// [description] The description.
  /// [folderPath] The folder path of the source control.
  /// [id] Fully qualified resource Id for the resource
  /// [lastModifiedTime] The last modified time.
  /// [name] The name of the resource
  /// [publishRunbook] The auto publish of the source control. Default is true.
  /// [repoUrl] The repo url of the source control.
  /// [sourceType] The source type. Must be one of VsoGit, VsoTfvc, GitHub.
  /// [type] The type of the resource.
  GetSourceControlResult({
    this.autoSync,
    required this.azureApiVersion,
    this.branch,
    this.creationTime,
    this.description,
    this.folderPath,
    required this.id,
    this.lastModifiedTime,
    required this.name,
    this.publishRunbook,
    this.repoUrl,
    this.sourceType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSync': ?autoSync,
      'azureApiVersion': azureApiVersion,
      'branch': ?branch,
      'creationTime': ?creationTime,
      'description': ?description,
      'folderPath': ?folderPath,
      'id': id,
      'lastModifiedTime': ?lastModifiedTime,
      'name': name,
      'publishRunbook': ?publishRunbook,
      'repoUrl': ?repoUrl,
      'sourceType': ?sourceType,
      'type': type,
    };
  }

  factory GetSourceControlResult.fromMap(Map<String, dynamic> map) {
    return GetSourceControlResult(
      autoSync: (() { final guardedValue = map['autoSync']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      publishRunbook: (() { final guardedValue = map['publishRunbook']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

