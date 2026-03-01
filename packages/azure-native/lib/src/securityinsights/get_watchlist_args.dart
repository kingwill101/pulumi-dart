// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_watchlist_args_doc}
/// Arguments for getWatchlist.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_watchlist_args_doc}
class GetWatchlistArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The watchlist alias
  final pulumi.Input<String> watchlistAlias;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWatchlistArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [watchlistAlias] The watchlist alias
  /// [workspaceName] The name of the workspace.
  GetWatchlistArgs({
    required String resourceGroupName,
    required String watchlistAlias,
    required String workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      watchlistAlias = pulumi.Input.asInput<String>(watchlistAlias),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'watchlistAlias': watchlistAlias,
      'workspaceName': workspaceName,
    };
  }

  factory GetWatchlistArgs.fromMap(Map<String, dynamic> map) {
    return GetWatchlistArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      watchlistAlias: map['watchlistAlias'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

