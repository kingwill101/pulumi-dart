// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_catalog.dart';

/// {@template pulumi_devcenter_project_catalog_args_doc}
/// The set of arguments for ProjectCatalog.
/// {@endtemplate}
/// {@macro pulumi_devcenter_project_catalog_args_doc}
class ProjectCatalogArgs {
  /// Properties for an Azure DevOps catalog type.
  final pulumi.Input<GitCatalog>? adoGit;
  /// The name of the Catalog.
  final pulumi.Input<String>? catalogName;
  /// Properties for a GitHub catalog type.
  final pulumi.Input<GitCatalog>? gitHub;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Indicates the type of sync that is configured for the catalog.
  final pulumi.Input<String>? syncType;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectCatalogArgs].
  /// [adoGit] Properties for an Azure DevOps catalog type.
  /// [catalogName] The name of the Catalog.
  /// [gitHub] Properties for a GitHub catalog type.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [syncType] Indicates the type of sync that is configured for the catalog.
  /// [tags] Resource tags.
  ProjectCatalogArgs({
    this.adoGit,
    this.catalogName,
    this.gitHub,
    required this.projectName,
    required this.resourceGroupName,
    this.syncType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoGit': ?pulumi.Input.mapOptionalInputValue<GitCatalog, Map<String, dynamic>>(adoGit, (value) => value.toMap()),
      'catalogName': ?catalogName,
      'gitHub': ?pulumi.Input.mapOptionalInputValue<GitCatalog, Map<String, dynamic>>(gitHub, (value) => value.toMap()),
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'syncType': ?syncType,
      'tags': ?tags,
    };
  }

  factory ProjectCatalogArgs.fromMap(Map<String, dynamic> map) {
    return ProjectCatalogArgs(
      adoGit: (() { final guardedValue = map['adoGit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      catalogName: (() { final guardedValue = map['catalogName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitHub: (() { final guardedValue = map['gitHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      syncType: (() { final guardedValue = map['syncType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

