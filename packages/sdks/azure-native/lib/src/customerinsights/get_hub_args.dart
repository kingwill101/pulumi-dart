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
  GetHubArgs({
    required pulumi.Output<String> hubName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      hubName = pulumi.Input.asInput<String>(hubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHubArgs.fromMap(Map<String, dynamic> map) {
    return GetHubArgs(
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

