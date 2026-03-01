// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_author.dart';
import 'metadata_categories.dart';
import 'metadata_dependencies.dart';
import 'metadata_source.dart';
import 'metadata_support.dart';

/// {@template pulumi_securityinsights_metadata_args_doc}
/// The set of arguments for Metadata.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_metadata_args_doc}
class MetadataArgs {
  /// The creator of the content item.
  final pulumi.Input<MetadataAuthor>? author;
  /// Categories for the solution content item
  final pulumi.Input<MetadataCategories>? categories;
  /// Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  final pulumi.Input<String>? contentId;
  /// Schema version of the content. Can be used to distinguish between different flow based on the schema version
  final pulumi.Input<String>? contentSchemaVersion;
  /// The custom version of the content. A optional free text
  final pulumi.Input<String>? customVersion;
  /// Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  final pulumi.Input<MetadataDependencies>? dependencies;
  /// first publish date solution content item
  final pulumi.Input<String>? firstPublishDate;
  /// the icon identifier. this id can later be fetched from the solution template
  final pulumi.Input<String>? icon;
  /// The kind of content the metadata is for.
  final pulumi.Input<String> kind;
  /// last publish date for the solution content item
  final pulumi.Input<String>? lastPublishDate;
  /// The Metadata name.
  final pulumi.Input<String>? metadataName;
  /// Full parent resource ID of the content item the metadata is for.  This is the full resource ID including the scope (subscription and resource group)
  final pulumi.Input<String> parentId;
  /// preview image file names. These will be taken from the solution artifacts
  final pulumi.Input<List<String>>? previewImages;
  /// preview image file names. These will be taken from the solution artifacts. used for dark theme support
  final pulumi.Input<List<String>>? previewImagesDark;
  /// Providers for the solution content item
  final pulumi.Input<List<String>>? providers;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Source of the content.  This is where/how it was created.
  final pulumi.Input<MetadataSource>? source;
  /// Support information for the metadata - type, name, contact information
  final pulumi.Input<MetadataSupport>? support;
  /// the tactics the resource covers
  final pulumi.Input<List<String>>? threatAnalysisTactics;
  /// the techniques the resource covers, these have to be aligned with the tactics being used
  final pulumi.Input<List<String>>? threatAnalysisTechniques;
  /// Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM template best practices.  Can also be any string, but then we cannot guarantee any version checks
  final pulumi.Input<String>? version;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MetadataArgs].
  /// [author] The creator of the content item.
  /// [categories] Categories for the solution content item
  /// [contentId] Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  /// [contentSchemaVersion] Schema version of the content. Can be used to distinguish between different flow based on the schema version
  /// [customVersion] The custom version of the content. A optional free text
  /// [dependencies] Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  /// [firstPublishDate] first publish date solution content item
  /// [icon] the icon identifier. this id can later be fetched from the solution template
  /// [kind] The kind of content the metadata is for.
  /// [lastPublishDate] last publish date for the solution content item
  /// [metadataName] The Metadata name.
  /// [parentId] Full parent resource ID of the content item the metadata is for.  This is the full resource ID including the scope (subscription and resource group)
  /// [previewImages] preview image file names. These will be taken from the solution artifacts
  /// [previewImagesDark] preview image file names. These will be taken from the solution artifacts. used for dark theme support
  /// [providers] Providers for the solution content item
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [source] Source of the content.  This is where/how it was created.
  /// [support] Support information for the metadata - type, name, contact information
  /// [threatAnalysisTactics] the tactics the resource covers
  /// [threatAnalysisTechniques] the techniques the resource covers, these have to be aligned with the tactics being used
  /// [version] Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM template best practices.  Can also be any string, but then we cannot guarantee any version checks
  /// [workspaceName] The name of the workspace.
  MetadataArgs({
    MetadataAuthor? author,
    MetadataCategories? categories,
    String? contentId,
    String? contentSchemaVersion,
    String? customVersion,
    MetadataDependencies? dependencies,
    String? firstPublishDate,
    String? icon,
    required String kind,
    String? lastPublishDate,
    String? metadataName,
    required String parentId,
    List<String>? previewImages,
    List<String>? previewImagesDark,
    List<String>? providers,
    required String resourceGroupName,
    MetadataSource? source,
    MetadataSupport? support,
    List<String>? threatAnalysisTactics,
    List<String>? threatAnalysisTechniques,
    String? version,
    required String workspaceName,
  }) :
      author = pulumi.Input.asOptionalInput<MetadataAuthor>(author),
      categories = pulumi.Input.asOptionalInput<MetadataCategories>(categories),
      contentId = pulumi.Input.asOptionalInput<String>(contentId),
      contentSchemaVersion = pulumi.Input.asOptionalInput<String>(contentSchemaVersion),
      customVersion = pulumi.Input.asOptionalInput<String>(customVersion),
      dependencies = pulumi.Input.asOptionalInput<MetadataDependencies>(dependencies),
      firstPublishDate = pulumi.Input.asOptionalInput<String>(firstPublishDate),
      icon = pulumi.Input.asOptionalInput<String>(icon),
      kind = pulumi.Input.asInput<String>(kind),
      lastPublishDate = pulumi.Input.asOptionalInput<String>(lastPublishDate),
      metadataName = pulumi.Input.asOptionalInput<String>(metadataName),
      parentId = pulumi.Input.asInput<String>(parentId),
      previewImages = pulumi.Input.asOptionalInput<List<String>>(previewImages),
      previewImagesDark = pulumi.Input.asOptionalInput<List<String>>(previewImagesDark),
      providers = pulumi.Input.asOptionalInput<List<String>>(providers),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asOptionalInput<MetadataSource>(source),
      support = pulumi.Input.asOptionalInput<MetadataSupport>(support),
      threatAnalysisTactics = pulumi.Input.asOptionalInput<List<String>>(threatAnalysisTactics),
      threatAnalysisTechniques = pulumi.Input.asOptionalInput<List<String>>(threatAnalysisTechniques),
      version = pulumi.Input.asOptionalInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?pulumi.Input.mapOptionalInputValue<MetadataAuthor, Map<String, dynamic>>(author, (value) => value.toMap()),
      'categories': ?pulumi.Input.mapOptionalInputValue<MetadataCategories, Map<String, dynamic>>(categories, (value) => value.toMap()),
      'contentId': ?contentId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'customVersion': ?customVersion,
      'dependencies': ?pulumi.Input.mapOptionalInputValue<MetadataDependencies, Map<String, dynamic>>(dependencies, (value) => value.toMap()),
      'firstPublishDate': ?firstPublishDate,
      'icon': ?icon,
      'kind': kind,
      'lastPublishDate': ?lastPublishDate,
      'metadataName': ?metadataName,
      'parentId': parentId,
      'previewImages': ?previewImages,
      'previewImagesDark': ?previewImagesDark,
      'providers': ?providers,
      'resourceGroupName': resourceGroupName,
      'source': ?pulumi.Input.mapOptionalInputValue<MetadataSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'support': ?pulumi.Input.mapOptionalInputValue<MetadataSupport, Map<String, dynamic>>(support, (value) => value.toMap()),
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory MetadataArgs.fromMap(Map<String, dynamic> map) {
    return MetadataArgs(
      author: map['author'] == null ? null : MetadataAuthor.fromMap((map['author'] as Map).cast<String, dynamic>()),
      categories: map['categories'] == null ? null : MetadataCategories.fromMap((map['categories'] as Map).cast<String, dynamic>()),
      contentId: map['contentId'] == null ? null : map['contentId'] as String,
      contentSchemaVersion: map['contentSchemaVersion'] == null ? null : map['contentSchemaVersion'] as String,
      customVersion: map['customVersion'] == null ? null : map['customVersion'] as String,
      dependencies: map['dependencies'] == null ? null : MetadataDependencies.fromMap((map['dependencies'] as Map).cast<String, dynamic>()),
      firstPublishDate: map['firstPublishDate'] == null ? null : map['firstPublishDate'] as String,
      icon: map['icon'] == null ? null : map['icon'] as String,
      kind: map['kind'] as String,
      lastPublishDate: map['lastPublishDate'] == null ? null : map['lastPublishDate'] as String,
      metadataName: map['metadataName'] == null ? null : map['metadataName'] as String,
      parentId: map['parentId'] as String,
      previewImages: map['previewImages'] == null ? null : (map['previewImages'] as List).cast<String>(),
      previewImagesDark: map['previewImagesDark'] == null ? null : (map['previewImagesDark'] as List).cast<String>(),
      providers: map['providers'] == null ? null : (map['providers'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      source: map['source'] == null ? null : MetadataSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      support: map['support'] == null ? null : MetadataSupport.fromMap((map['support'] as Map).cast<String, dynamic>()),
      threatAnalysisTactics: map['threatAnalysisTactics'] == null ? null : (map['threatAnalysisTactics'] as List).cast<String>(),
      threatAnalysisTechniques: map['threatAnalysisTechniques'] == null ? null : (map['threatAnalysisTechniques'] as List).cast<String>(),
      version: map['version'] == null ? null : map['version'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

