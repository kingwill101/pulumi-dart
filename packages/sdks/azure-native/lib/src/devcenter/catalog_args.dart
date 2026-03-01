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
    pulumi.Output<GitCatalog>? adoGit,
    pulumi.Output<String>? catalogName,
    required pulumi.Output<String> devCenterName,
    pulumi.Output<GitCatalog>? gitHub,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? syncType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      adoGit = pulumi.Input.asOptionalInput<GitCatalog>(adoGit),
      catalogName = pulumi.Input.asOptionalInput<String>(catalogName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      gitHub = pulumi.Input.asOptionalInput<GitCatalog>(gitHub),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      syncType = pulumi.Input.asOptionalInput<String>(syncType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      adoGit: map['adoGit'] == null ? null : pulumi.Output.create<GitCatalog>(GitCatalog.fromMap((map['adoGit'] as Map).cast<String, dynamic>())),
      catalogName: map['catalogName'] == null ? null : pulumi.Output.create<String>(map['catalogName'] as String),
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      gitHub: map['gitHub'] == null ? null : pulumi.Output.create<GitCatalog>(GitCatalog.fromMap((map['gitHub'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      syncType: map['syncType'] == null ? null : pulumi.Output.create<String>(map['syncType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

