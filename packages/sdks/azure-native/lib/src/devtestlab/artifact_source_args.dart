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
    pulumi.Output<String>? armTemplateFolderPath,
    pulumi.Output<String>? branchRef,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? folderPath,
    required pulumi.Output<String> labName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? securityToken,
    pulumi.Output<String>? sourceType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? uri,
  }) :
      armTemplateFolderPath = pulumi.Input.asOptionalInput<String>(armTemplateFolderPath),
      branchRef = pulumi.Input.asOptionalInput<String>(branchRef),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      folderPath = pulumi.Input.asOptionalInput<String>(folderPath),
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityToken = pulumi.Input.asOptionalInput<String>(securityToken),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uri = pulumi.Input.asOptionalInput<String>(uri);

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
      armTemplateFolderPath: map['armTemplateFolderPath'] == null ? null : pulumi.Output.create<String>(map['armTemplateFolderPath'] as String),
      branchRef: map['branchRef'] == null ? null : pulumi.Output.create<String>(map['branchRef'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      folderPath: map['folderPath'] == null ? null : pulumi.Output.create<String>(map['folderPath'] as String),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityToken: map['securityToken'] == null ? null : pulumi.Output.create<String>(map['securityToken'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

