// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_watchlist_item_args_doc}
/// Arguments for getWatchlistItem.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_watchlist_item_args_doc}
class GetWatchlistItemArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The watchlist alias
  final pulumi.Input<String> watchlistAlias;
  /// The watchlist item id (GUID)
  final pulumi.Input<String> watchlistItemId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWatchlistItemArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [watchlistAlias] The watchlist alias
  /// [watchlistItemId] The watchlist item id (GUID)
  /// [workspaceName] The name of the workspace.
  GetWatchlistItemArgs({
    required String resourceGroupName,
    required String watchlistAlias,
    required String watchlistItemId,
    required String workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      watchlistAlias = pulumi.Input.asInput<String>(watchlistAlias),
      watchlistItemId = pulumi.Input.asInput<String>(watchlistItemId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'watchlistAlias': watchlistAlias,
      'watchlistItemId': watchlistItemId,
      'workspaceName': workspaceName,
    };
  }

  factory GetWatchlistItemArgs.fromMap(Map<String, dynamic> map) {
    return GetWatchlistItemArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      watchlistAlias: map['watchlistAlias'] as String,
      watchlistItemId: map['watchlistItemId'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

