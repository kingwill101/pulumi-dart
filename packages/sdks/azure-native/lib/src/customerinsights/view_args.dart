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
    required pulumi.Output<String> definition,
    pulumi.Output<Map<String, String>>? displayName,
    required pulumi.Output<String> hubName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? userId,
    pulumi.Output<String>? viewName,
  }) :
      definition = pulumi.Input.asInput<String>(definition),
      displayName = pulumi.Input.asOptionalInput<Map<String, String>>(displayName),
      hubName = pulumi.Input.asInput<String>(hubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      viewName = pulumi.Input.asOptionalInput<String>(viewName);

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
      definition: pulumi.Output.create<String>(map['definition'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<Map<String, String>>((map['displayName'] as Map).cast<String, String>()),
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      viewName: map['viewName'] == null ? null : pulumi.Output.create<String>(map['viewName'] as String),
    );
  }
}

