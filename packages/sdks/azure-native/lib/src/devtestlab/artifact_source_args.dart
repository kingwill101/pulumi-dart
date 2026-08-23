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
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the artifact source.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security token to authenticate to the artifact source.
  final pulumi.Input<String>? securityToken;
  /// The artifact source's type.
  final pulumi.Input<String>? sourceType;
  /// Indicates if the artifact source is enabled (values: Enabled, Disabled).
  final pulumi.Input<String>? status;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The artifact source's URI.
  final pulumi.Input<String>? uri;

  /// Creates a new [ArtifactSourceArgs].
  /// [armTemplateFolderPath] The folder containing Azure Resource Manager templates.
  /// [branchRef] The artifact source's branch reference.
  /// [displayName] The artifact source's display name.
  /// [folderPath] The folder containing artifacts.
  /// [labName] The name of the lab.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the artifact source.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityToken] The security token to authenticate to the artifact source.
  /// [sourceType] The artifact source's type.
  /// [status] Indicates if the artifact source is enabled (values: Enabled, Disabled).
  /// [tags] Resource tags.
  /// [uri] The artifact source's URI.
  const ArtifactSourceArgs({
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
      armTemplateFolderPath: (() { final guardedValue = map['armTemplateFolderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      branchRef: (() { final guardedValue = map['branchRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityToken: (() { final guardedValue = map['securityToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
