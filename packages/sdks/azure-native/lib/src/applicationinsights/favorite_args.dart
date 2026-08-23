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
  const FavoriteArgs({
    this.category,
    this.config,
    this.favoriteId,
    this.favoriteType,
    this.isGeneratedFromTemplate,
    this.name,
    required this.resourceGroupName,
    required this.resourceName,
    this.sourceType,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'config': ?config,
      'favoriteId': ?favoriteId,
      'favoriteType': ?pulumi.Input.mapOptionalInputValue<FavoriteType, String>(favoriteType, (value) => value.wireValue),
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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      favoriteId: (() { final guardedValue = map['favoriteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      favoriteType: (() { final guardedValue = map['favoriteType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FavoriteType.fromValue(guardedValue as String)); })(),
      isGeneratedFromTemplate: (() { final guardedValue = map['isGeneratedFromTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
