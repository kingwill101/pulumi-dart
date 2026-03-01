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
    required pulumi.Output<String> containerGroupProfileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      containerGroupProfileName = pulumi.Input.asInput<String>(containerGroupProfileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProfileName': containerGroupProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCGProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetCGProfileArgs(
      containerGroupProfileName: pulumi.Output.create<String>(map['containerGroupProfileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

