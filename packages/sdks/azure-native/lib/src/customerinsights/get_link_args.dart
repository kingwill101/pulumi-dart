// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_link_args_doc}
/// Arguments for getLink.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_link_args_doc}
class GetLinkArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the link.
  final pulumi.Input<String> linkName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLinkArgs].
  /// [hubName] The name of the hub.
  /// [linkName] The name of the link.
  /// [resourceGroupName] The name of the resource group.
  GetLinkArgs({
    required this.hubName,
    required this.linkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'linkName': linkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkArgs(
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      linkName: pulumi.Input.fromValue(map['linkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

