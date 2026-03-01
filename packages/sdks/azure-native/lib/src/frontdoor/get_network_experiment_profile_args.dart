// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_frontdoor_get_network_experiment_profile_args_doc}
/// Arguments for getNetworkExperimentProfile.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_get_network_experiment_profile_args_doc}
class GetNetworkExperimentProfileArgs {
  /// The Profile identifier associated with the Tenant and Partner
  final pulumi.Input<String> profileName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkExperimentProfileArgs].
  /// [profileName] The Profile identifier associated with the Tenant and Partner
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  GetNetworkExperimentProfileArgs({
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkExperimentProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkExperimentProfileArgs(
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

