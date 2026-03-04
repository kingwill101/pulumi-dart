// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerinstance_get_cgprofile_args_doc}
/// Arguments for getCGProfile.
/// {@endtemplate}
/// {@macro pulumi_containerinstance_get_cgprofile_args_doc}
class GetCGProfileArgs {
  /// ContainerGroupProfile name.
  final pulumi.Input<String> containerGroupProfileName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCGProfileArgs].
  /// [containerGroupProfileName] ContainerGroupProfile name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCGProfileArgs({
    required this.containerGroupProfileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProfileName': containerGroupProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCGProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetCGProfileArgs(
      containerGroupProfileName: pulumi.Input.fromValue(
        map['containerGroupProfileName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
