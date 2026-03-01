// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_list_fleet_credentials_args_doc}
/// Arguments for listFleetCredentials.
/// {@endtemplate}
/// {@macro pulumi_containerservice_list_fleet_credentials_args_doc}
class ListFleetCredentialsArgs {
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListFleetCredentialsArgs].
  /// [fleetName] The name of the Fleet resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListFleetCredentialsArgs({
    required pulumi.Output<String> fleetName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      fleetName = pulumi.Input.asInput<String>(fleetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListFleetCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListFleetCredentialsArgs(
      fleetName: pulumi.Output.create<String>(map['fleetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

