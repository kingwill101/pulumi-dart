// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_hub_args_doc}
/// Arguments for getHub.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_hub_args_doc}
class GetHubArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHubArgs].
  /// [hubName] The name of the hub.
  /// [resourceGroupName] The name of the resource group.
  GetHubArgs({required this.hubName, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHubArgs.fromMap(Map<String, dynamic> map) {
    return GetHubArgs(
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
