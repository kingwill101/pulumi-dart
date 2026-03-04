// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerinstance_get_container_group_profile_args_doc}
/// Arguments for getContainerGroupProfile.
/// {@endtemplate}
/// {@macro pulumi_containerinstance_get_container_group_profile_args_doc}
class GetContainerGroupProfileArgs {
  /// The name of the container group profile.
  final pulumi.Input<String> containerGroupProfileName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetContainerGroupProfileArgs].
  /// [containerGroupProfileName] The name of the container group profile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetContainerGroupProfileArgs({
    required this.containerGroupProfileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProfileName': containerGroupProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetContainerGroupProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupProfileArgs(
      containerGroupProfileName: pulumi.Input.fromValue(
        map['containerGroupProfileName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
