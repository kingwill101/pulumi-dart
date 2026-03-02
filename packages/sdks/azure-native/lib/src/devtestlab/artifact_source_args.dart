// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_artifact_source_args_doc}
/// The set of arguments for ArtifactSource.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_artifact_source_args_doc}
class ArtifactSourceArgs {
  /// The folder containing Azure Resource Manager templates.
  final pulumi.Input<String>? armTemplateFolderPath;
  /// The artifact source's branch reference.
  final pulumi.Input<String>? branchRef;
  /// The artifact source's display name.
  final pulumi.Input<String>? displayName;
  /// The folder containing artifacts.
  final pulumi.Input<String>? folderPath;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the ArtifactSource
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security token to authenticate to the artifact source.
  final pulumi.Input<String>? securityToken;
  /// The artifact source's type.
  final pulumi.Input<String>? sourceType;
  /// Indicates if the artifact source is enabled (values: Enabled, Disabled).
  final pulumi.Input<String>? status;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The artifact source's URI.
  final pulumi.Input<String>? uri;

  /// Creates a new [ArtifactSourceArgs].
  /// [armTemplateFolderPath] The folder containing Azure Resource Manager templates.
  /// [branchRef] The artifact source's branch reference.
  /// [displayName] The artifact source's display name.
  /// [folderPath] The folder containing artifacts.
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [name] The name of the ArtifactSource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityToken] The security token to authenticate to the artifact source.
  /// [sourceType] The artifact source's type.
  /// [status] Indicates if the artifact source is enabled (values: Enabled, Disabled).
  /// [tags] The tags of the resource.
  /// [uri] The artifact source's URI.
  ArtifactSourceArgs({
    this.armTemplateFolderPath,
    this.branchRef,
    this.displayName,
    this.folderPath,
    required this.labName,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.securityToken,
    this.sourceType,
    this.status,
    this.tags,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armTemplateFolderPath': ?armTemplateFolderPath,
      'branchRef': ?branchRef,
      'displayName': ?displayName,
      'folderPath': ?folderPath,
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'securityToken': ?securityToken,
      'sourceType': ?sourceType,
      'status': ?status,
      'tags': ?tags,
      'uri': ?uri,
    };
  }

  factory ArtifactSourceArgs.fromMap(Map<String, dynamic> map) {
    return ArtifactSourceArgs(
      armTemplateFolderPath: map['armTemplateFolderPath'] == null ? null : (map['armTemplateFolderPath'] as String).input(),
      branchRef: map['branchRef'] == null ? null : (map['branchRef'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath'] as String).input(),
      labName: (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityToken: map['securityToken'] == null ? null : (map['securityToken'] as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

