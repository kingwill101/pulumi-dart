// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_connected_environment_args_doc}
/// Arguments for getConnectedEnvironment.
/// {@endtemplate}
/// {@macro pulumi_app_get_connected_environment_args_doc}
class GetConnectedEnvironmentArgs {
  /// Name of the connectedEnvironment.
  final pulumi.Input<String> connectedEnvironmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectedEnvironmentArgs].
  /// [connectedEnvironmentName] Name of the connectedEnvironment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConnectedEnvironmentArgs({
    required pulumi.Output<String> connectedEnvironmentName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectedEnvironmentName = pulumi.Input.asInput<String>(connectedEnvironmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedEnvironmentName': connectedEnvironmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectedEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectedEnvironmentArgs(
      connectedEnvironmentName: pulumi.Output.create<String>(map['connectedEnvironmentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

