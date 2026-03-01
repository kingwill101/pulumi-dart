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
  GetViewArgs({
    required String hubName,
    required String resourceGroupName,
    required String userId,
    required String viewName,
  }) :
      hubName = pulumi.Input.asInput<String>(hubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userId = pulumi.Input.asInput<String>(userId),
      viewName = pulumi.Input.asInput<String>(viewName);

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
      hubName: map['hubName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      userId: map['userId'] as String,
      viewName: map['viewName'] as String,
    );
  }
}

