// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_view_args_doc}
/// The set of arguments for View.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_view_args_doc}
class ViewArgs {
  /// View definition.
  final pulumi.Input<String> definition;

  /// Localized display name for the view.
  final pulumi.Input<Map<String, String>>? displayName;

  /// The name of the hub.
  final pulumi.Input<String> hubName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// the user ID.
  final pulumi.Input<String>? userId;

  /// The name of the view.
  final pulumi.Input<String>? viewName;

  /// Creates a new [ViewArgs].
  /// [definition] View definition.
  /// [displayName] Localized display name for the view.
  /// [hubName] The name of the hub.
  /// [resourceGroupName] The name of the resource group.
  /// [userId] the user ID.
  /// [viewName] The name of the view.
  ViewArgs({
    required this.definition,
    this.displayName,
    required this.hubName,
    required this.resourceGroupName,
    this.userId,
    this.viewName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'displayName': ?displayName,
      'hubName': hubName,
      'resourceGroupName': resourceGroupName,
      'userId': ?userId,
      'viewName': ?viewName,
    };
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      definition: pulumi.Input.fromValue(map['definition'] as String),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      viewName: (() {
        final guardedValue = map['viewName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
