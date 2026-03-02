// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_catalog.dart';

/// {@template pulumi_devcenter_catalog_args_doc}
/// The set of arguments for Catalog.
/// {@endtemplate}
/// {@macro pulumi_devcenter_catalog_args_doc}
class CatalogArgs {
  /// Properties for an Azure DevOps catalog type.
  final pulumi.Input<GitCatalog>? adoGit;
  /// The name of the Catalog.
  final pulumi.Input<String>? catalogName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// Properties for a GitHub catalog type.
  final pulumi.Input<GitCatalog>? gitHub;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Indicates the type of sync that is configured for the catalog.
  final pulumi.Input<String>? syncType;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CatalogArgs].
  /// [adoGit] Properties for an Azure DevOps catalog type.
  /// [catalogName] The name of the Catalog.
  /// [devCenterName] The name of the devcenter.
  /// [gitHub] Properties for a GitHub catalog type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [syncType] Indicates the type of sync that is configured for the catalog.
  /// [tags] Resource tags.
  CatalogArgs({
    this.adoGit,
    this.catalogName,
    required this.devCenterName,
    this.gitHub,
    required this.resourceGroupName,
    this.syncType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoGit': ?pulumi.Input.mapOptionalInputValue<GitCatalog, Map<String, dynamic>>(adoGit, (value) => value.toMap()),
      'catalogName': ?catalogName,
      'devCenterName': devCenterName,
      'gitHub': ?pulumi.Input.mapOptionalInputValue<GitCatalog, Map<String, dynamic>>(gitHub, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'syncType': ?syncType,
      'tags': ?tags,
    };
  }

  factory CatalogArgs.fromMap(Map<String, dynamic> map) {
    return CatalogArgs(
      adoGit: map['adoGit'] == null ? null : (GitCatalog.fromMap((map['adoGit'] as Map).cast<String, dynamic>())).input(),
      catalogName: map['catalogName'] == null ? null : (map['catalogName'] as String).input(),
      devCenterName: (map['devCenterName'] as String).input(),
      gitHub: map['gitHub'] == null ? null : (GitCatalog.fromMap((map['gitHub'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      syncType: map['syncType'] == null ? null : (map['syncType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

