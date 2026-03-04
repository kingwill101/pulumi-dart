// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getArtifactSource.
class GetArtifactSourceResult {
  /// The folder containing Azure Resource Manager templates.
  final String? armTemplateFolderPath;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The artifact source's branch reference.
  final String? branchRef;

  /// The artifact source's creation date.
  final String createdDate;

  /// The artifact source's display name.
  final String? displayName;

  /// The folder containing artifacts.
  final String? folderPath;

  /// The identifier of the resource.
  final String id;

  /// The location of the resource.
  final String? location;

  /// The name of the resource.
  final String name;

  /// The provisioning status of the resource.
  final String provisioningState;

  /// The security token to authenticate to the artifact source.
  final String? securityToken;

  /// The artifact source's type.
  final String? sourceType;

  /// Indicates if the artifact source is enabled (values: Enabled, Disabled).
  final String? status;

  /// The tags of the resource.
  final Map<String, String>? tags;

  /// The type of the resource.
  final String type;

  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;

  /// The artifact source's URI.
  final String? uri;

  /// Creates a new [GetArtifactSourceResult].
  /// [armTemplateFolderPath] The folder containing Azure Resource Manager templates.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [branchRef] The artifact source's branch reference.
  /// [createdDate] The artifact source's creation date.
  /// [displayName] The artifact source's display name.
  /// [folderPath] The folder containing artifacts.
  /// [id] The identifier of the resource.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning status of the resource.
  /// [securityToken] The security token to authenticate to the artifact source.
  /// [sourceType] The artifact source's type.
  /// [status] Indicates if the artifact source is enabled (values: Enabled, Disabled).
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [uri] The artifact source's URI.
  GetArtifactSourceResult({
    this.armTemplateFolderPath,
    required this.azureApiVersion,
    this.branchRef,
    required this.createdDate,
    this.displayName,
    this.folderPath,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.securityToken,
    this.sourceType,
    this.status,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armTemplateFolderPath': ?armTemplateFolderPath,
      'azureApiVersion': azureApiVersion,
      'branchRef': ?branchRef,
      'createdDate': createdDate,
      'displayName': ?displayName,
      'folderPath': ?folderPath,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'securityToken': ?securityToken,
      'sourceType': ?sourceType,
      'status': ?status,
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
      'uri': ?uri,
    };
  }

  factory GetArtifactSourceResult.fromMap(Map<String, dynamic> map) {
    return GetArtifactSourceResult(
      armTemplateFolderPath: (() {
        final guardedValue = map['armTemplateFolderPath'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      branchRef: (() {
        final guardedValue = map['branchRef'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      createdDate: map['createdDate'] as String,
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      folderPath: (() {
        final guardedValue = map['folderPath'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      securityToken: (() {
        final guardedValue = map['securityToken'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sourceType: (() {
        final guardedValue = map['sourceType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
