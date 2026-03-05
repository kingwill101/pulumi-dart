// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automanage_get_configuration_profile_hciassignment_args_doc}
/// Arguments for getConfigurationProfileHCIAssignment.
/// {@endtemplate}
/// {@macro pulumi_automanage_get_configuration_profile_hciassignment_args_doc}
class GetConfigurationProfileHCIAssignmentArgs {
  /// The name of the Arc machine.
  final pulumi.Input<String> clusterName;
  /// The configuration profile assignment name.
  final pulumi.Input<String> configurationProfileAssignmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationProfileHCIAssignmentArgs].
  /// [clusterName] The name of the Arc machine.
  /// [configurationProfileAssignmentName] The configuration profile assignment name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConfigurationProfileHCIAssignmentArgs({
    required this.clusterName,
    required this.configurationProfileAssignmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'configurationProfileAssignmentName': configurationProfileAssignmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationProfileHCIAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileHCIAssignmentArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      configurationProfileAssignmentName: pulumi.Input.fromValue(map['configurationProfileAssignmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

