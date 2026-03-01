// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_author.dart';
import 'metadata_categories.dart';
import 'metadata_dependencies.dart';
import 'metadata_source.dart';
import 'metadata_support.dart';

/// {@template pulumi_securityinsights_content_package_args_doc}
/// The set of arguments for ContentPackage.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_content_package_args_doc}
class ContentPackageArgs {
  /// The author of the package
  final pulumi.Input<MetadataAuthor>? author;
  /// The categories of the package
  final pulumi.Input<MetadataCategories>? categories;
  /// The content id of the package
  final pulumi.Input<String> contentId;
  /// The package kind
  final pulumi.Input<String> contentKind;
  /// Unique ID for the content. It should be generated based on the contentId, contentKind and the contentVersion of the package
  final pulumi.Input<String> contentProductId;
  /// The version of the content schema.
  final pulumi.Input<String>? contentSchemaVersion;
  /// The support tier of the package
  final pulumi.Input<MetadataDependencies>? dependencies;
  /// The description of the package
  final pulumi.Input<String>? description;
  /// The display name of the package
  final pulumi.Input<String> displayName;
  /// first publish date package item
  final pulumi.Input<String>? firstPublishDate;
  /// the icon identifier. this id can later be fetched from the content metadata
  final pulumi.Input<String>? icon;
  /// Flag indicates if this template is deprecated
  final pulumi.Input<String>? isDeprecated;
  /// Flag indicates if this package is among the featured list.
  final pulumi.Input<String>? isFeatured;
  /// Flag indicates if this is a newly published package.
  final pulumi.Input<String>? isNew;
  /// Flag indicates if this package is in preview.
  final pulumi.Input<String>? isPreview;
  /// last publish date for the package item
  final pulumi.Input<String>? lastPublishDate;
  /// package Id
  final pulumi.Input<String>? packageId;
  /// Providers for the package item
  final pulumi.Input<List<String>>? providers;
  /// The publisher display name of the package
  final pulumi.Input<String>? publisherDisplayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The source of the package
  final pulumi.Input<MetadataSource>? source;
  /// The support tier of the package
  final pulumi.Input<MetadataSupport>? support;
  /// the tactics the resource covers
  final pulumi.Input<List<String>>? threatAnalysisTactics;
  /// the techniques the resource covers, these have to be aligned with the tactics being used
  final pulumi.Input<List<String>>? threatAnalysisTechniques;
  /// the latest version number of the package
  final pulumi.Input<String> version;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ContentPackageArgs].
  /// [author] The author of the package
  /// [categories] The categories of the package
  /// [contentId] The content id of the package
  /// [contentKind] The package kind
  /// [contentProductId] Unique ID for the content. It should be generated based on the contentId, contentKind and the contentVersion of the package
  /// [contentSchemaVersion] The version of the content schema.
  /// [dependencies] The support tier of the package
  /// [description] The description of the package
  /// [displayName] The display name of the package
  /// [firstPublishDate] first publish date package item
  /// [icon] the icon identifier. this id can later be fetched from the content metadata
  /// [isDeprecated] Flag indicates if this template is deprecated
  /// [isFeatured] Flag indicates if this package is among the featured list.
  /// [isNew] Flag indicates if this is a newly published package.
  /// [isPreview] Flag indicates if this package is in preview.
  /// [lastPublishDate] last publish date for the package item
  /// [packageId] package Id
  /// [providers] Providers for the package item
  /// [publisherDisplayName] The publisher display name of the package
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [source] The source of the package
  /// [support] The support tier of the package
  /// [threatAnalysisTactics] the tactics the resource covers
  /// [threatAnalysisTechniques] the techniques the resource covers, these have to be aligned with the tactics being used
  /// [version] the latest version number of the package
  /// [workspaceName] The name of the workspace.
  ContentPackageArgs({
    MetadataAuthor? author,
    MetadataCategories? categories,
    required String contentId,
    required String contentKind,
    required String contentProductId,
    String? contentSchemaVersion,
    MetadataDependencies? dependencies,
    String? description,
    required String displayName,
    String? firstPublishDate,
    String? icon,
    String? isDeprecated,
    String? isFeatured,
    String? isNew,
    String? isPreview,
    String? lastPublishDate,
    String? packageId,
    List<String>? providers,
    String? publisherDisplayName,
    required String resourceGroupName,
    MetadataSource? source,
    MetadataSupport? support,
    List<String>? threatAnalysisTactics,
    List<String>? threatAnalysisTechniques,
    required String version,
    required String workspaceName,
  }) :
      author = pulumi.Input.asOptionalInput<MetadataAuthor>(author),
      categories = pulumi.Input.asOptionalInput<MetadataCategories>(categories),
      contentId = pulumi.Input.asInput<String>(contentId),
      contentKind = pulumi.Input.asInput<String>(contentKind),
      contentProductId = pulumi.Input.asInput<String>(contentProductId),
      contentSchemaVersion = pulumi.Input.asOptionalInput<String>(contentSchemaVersion),
      dependencies = pulumi.Input.asOptionalInput<MetadataDependencies>(dependencies),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      firstPublishDate = pulumi.Input.asOptionalInput<String>(firstPublishDate),
      icon = pulumi.Input.asOptionalInput<String>(icon),
      isDeprecated = pulumi.Input.asOptionalInput<String>(isDeprecated),
      isFeatured = pulumi.Input.asOptionalInput<String>(isFeatured),
      isNew = pulumi.Input.asOptionalInput<String>(isNew),
      isPreview = pulumi.Input.asOptionalInput<String>(isPreview),
      lastPublishDate = pulumi.Input.asOptionalInput<String>(lastPublishDate),
      packageId = pulumi.Input.asOptionalInput<String>(packageId),
      providers = pulumi.Input.asOptionalInput<List<String>>(providers),
      publisherDisplayName = pulumi.Input.asOptionalInput<String>(publisherDisplayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asOptionalInput<MetadataSource>(source),
      support = pulumi.Input.asOptionalInput<MetadataSupport>(support),
      threatAnalysisTactics = pulumi.Input.asOptionalInput<List<String>>(threatAnalysisTactics),
      threatAnalysisTechniques = pulumi.Input.asOptionalInput<List<String>>(threatAnalysisTechniques),
      version = pulumi.Input.asInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?pulumi.Input.mapOptionalInputValue<MetadataAuthor, Map<String, dynamic>>(author, (value) => value.toMap()),
      'categories': ?pulumi.Input.mapOptionalInputValue<MetadataCategories, Map<String, dynamic>>(categories, (value) => value.toMap()),
      'contentId': contentId,
      'contentKind': contentKind,
      'contentProductId': contentProductId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'dependencies': ?pulumi.Input.mapOptionalInputValue<MetadataDependencies, Map<String, dynamic>>(dependencies, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'firstPublishDate': ?firstPublishDate,
      'icon': ?icon,
      'isDeprecated': ?isDeprecated,
      'isFeatured': ?isFeatured,
      'isNew': ?isNew,
      'isPreview': ?isPreview,
      'lastPublishDate': ?lastPublishDate,
      'packageId': ?packageId,
      'providers': ?providers,
      'publisherDisplayName': ?publisherDisplayName,
      'resourceGroupName': resourceGroupName,
      'source': ?pulumi.Input.mapOptionalInputValue<MetadataSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'support': ?pulumi.Input.mapOptionalInputValue<MetadataSupport, Map<String, dynamic>>(support, (value) => value.toMap()),
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'version': version,
      'workspaceName': workspaceName,
    };
  }

  factory ContentPackageArgs.fromMap(Map<String, dynamic> map) {
    return ContentPackageArgs(
      author: map['author'] == null ? null : MetadataAuthor.fromMap((map['author'] as Map).cast<String, dynamic>()),
      categories: map['categories'] == null ? null : MetadataCategories.fromMap((map['categories'] as Map).cast<String, dynamic>()),
      contentId: map['contentId'] as String,
      contentKind: map['contentKind'] as String,
      contentProductId: map['contentProductId'] as String,
      contentSchemaVersion: map['contentSchemaVersion'] == null ? null : map['contentSchemaVersion'] as String,
      dependencies: map['dependencies'] == null ? null : MetadataDependencies.fromMap((map['dependencies'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      firstPublishDate: map['firstPublishDate'] == null ? null : map['firstPublishDate'] as String,
      icon: map['icon'] == null ? null : map['icon'] as String,
      isDeprecated: map['isDeprecated'] == null ? null : map['isDeprecated'] as String,
      isFeatured: map['isFeatured'] == null ? null : map['isFeatured'] as String,
      isNew: map['isNew'] == null ? null : map['isNew'] as String,
      isPreview: map['isPreview'] == null ? null : map['isPreview'] as String,
      lastPublishDate: map['lastPublishDate'] == null ? null : map['lastPublishDate'] as String,
      packageId: map['packageId'] == null ? null : map['packageId'] as String,
      providers: map['providers'] == null ? null : (map['providers'] as List).cast<String>(),
      publisherDisplayName: map['publisherDisplayName'] == null ? null : map['publisherDisplayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      source: map['source'] == null ? null : MetadataSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      support: map['support'] == null ? null : MetadataSupport.fromMap((map['support'] as Map).cast<String, dynamic>()),
      threatAnalysisTactics: map['threatAnalysisTactics'] == null ? null : (map['threatAnalysisTactics'] as List).cast<String>(),
      threatAnalysisTechniques: map['threatAnalysisTechniques'] == null ? null : (map['threatAnalysisTechniques'] as List).cast<String>(),
      version: map['version'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

