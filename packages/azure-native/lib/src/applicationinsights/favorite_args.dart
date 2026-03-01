// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'favorite_type.dart';

/// {@template pulumi_applicationinsights_favorite_args_doc}
/// The set of arguments for Favorite.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_favorite_args_doc}
class FavoriteArgs {
  /// Favorite category, as defined by the user at creation time.
  final pulumi.Input<String>? category;
  /// Configuration of this particular favorite, which are driven by the Azure portal UX. Configuration data is a string containing valid JSON
  final pulumi.Input<String>? config;
  /// The Id of a specific favorite defined in the Application Insights component
  final pulumi.Input<String>? favoriteId;
  /// Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  final pulumi.Input<FavoriteType>? favoriteType;
  /// Flag denoting wether or not this favorite was generated from a template.
  final pulumi.Input<bool>? isGeneratedFromTemplate;
  /// The user-defined name of the favorite.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;
  /// The source of the favorite definition.
  final pulumi.Input<String>? sourceType;
  /// A list of 0 or more tags that are associated with this favorite definition
  final pulumi.Input<List<String>>? tags;
  /// This instance's version of the data model. This can change as new features are added that can be marked favorite. Current examples include MetricsExplorer (ME) and Search.
  final pulumi.Input<String>? version;

  /// Creates a new [FavoriteArgs].
  /// [category] Favorite category, as defined by the user at creation time.
  /// [config] Configuration of this particular favorite, which are driven by the Azure portal UX. Configuration data is a string containing valid JSON
  /// [favoriteId] The Id of a specific favorite defined in the Application Insights component
  /// [favoriteType] Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  /// [isGeneratedFromTemplate] Flag denoting wether or not this favorite was generated from a template.
  /// [name] The user-defined name of the favorite.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  /// [sourceType] The source of the favorite definition.
  /// [tags] A list of 0 or more tags that are associated with this favorite definition
  /// [version] This instance's version of the data model. This can change as new features are added that can be marked favorite. Current examples include MetricsExplorer (ME) and Search.
  FavoriteArgs({
    String? category,
    String? config,
    String? favoriteId,
    FavoriteType? favoriteType,
    bool? isGeneratedFromTemplate,
    String? name,
    required String resourceGroupName,
    required String resourceName,
    String? sourceType,
    List<String>? tags,
    String? version,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      config = pulumi.Input.asOptionalInput<String>(config),
      favoriteId = pulumi.Input.asOptionalInput<String>(favoriteId),
      favoriteType = pulumi.Input.asOptionalInput<FavoriteType>(favoriteType),
      isGeneratedFromTemplate = pulumi.Input.asOptionalInput<bool>(isGeneratedFromTemplate),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'config': ?config,
      'favoriteId': ?favoriteId,
      'favoriteType': ?pulumi.Input.mapOptionalInputValue<FavoriteType, String>(favoriteType, (value) => value.value),
      'isGeneratedFromTemplate': ?isGeneratedFromTemplate,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'sourceType': ?sourceType,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory FavoriteArgs.fromMap(Map<String, dynamic> map) {
    return FavoriteArgs(
      category: map['category'] == null ? null : map['category'] as String,
      config: map['config'] == null ? null : map['config'] as String,
      favoriteId: map['favoriteId'] == null ? null : map['favoriteId'] as String,
      favoriteType: map['favoriteType'] == null ? null : FavoriteType.fromValue(map['favoriteType'] as String),
      isGeneratedFromTemplate: map['isGeneratedFromTemplate'] == null ? null : map['isGeneratedFromTemplate'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      sourceType: map['sourceType'] == null ? null : map['sourceType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

