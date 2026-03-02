// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_favorite_args_doc}
/// Arguments for getFavorite.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_favorite_args_doc}
class GetFavoriteArgs {
  /// The Id of a specific favorite defined in the Application Insights component
  final pulumi.Input<String> favoriteId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetFavoriteArgs].
  /// [favoriteId] The Id of a specific favorite defined in the Application Insights component
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  GetFavoriteArgs({
    required this.favoriteId,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'favoriteId': favoriteId,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetFavoriteArgs.fromMap(Map<String, dynamic> map) {
    return GetFavoriteArgs(
      favoriteId: (map['favoriteId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

