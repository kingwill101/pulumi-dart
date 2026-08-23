// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_view_args_doc}
/// Arguments for getView.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_view_args_doc}
class GetViewArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The user ID. Use * to retrieve hub level view.
  final pulumi.Input<String> userId;
  /// The name of the view.
  final pulumi.Input<String> viewName;

  /// Creates a new [GetViewArgs].
  /// [hubName] The name of the hub.
  /// [resourceGroupName] The name of the resource group.
  /// [userId] The user ID. Use * to retrieve hub level view.
  /// [viewName] The name of the view.
  const GetViewArgs({
    required this.hubName,
    required this.resourceGroupName,
    required this.userId,
    required this.viewName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'resourceGroupName': resourceGroupName,
      'userId': userId,
      'viewName': viewName,
    };
  }

  factory GetViewArgs.fromMap(Map<String, dynamic> map) {
    return GetViewArgs(
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      viewName: pulumi.Input.fromValue(map['viewName'] as String),
    );
  }
}
