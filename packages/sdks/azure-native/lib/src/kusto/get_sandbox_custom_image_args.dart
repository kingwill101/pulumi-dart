// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_sandbox_custom_image_args_doc}
/// Arguments for getSandboxCustomImage.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_sandbox_custom_image_args_doc}
class GetSandboxCustomImageArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the sandbox custom image.
  final pulumi.Input<String> sandboxCustomImageName;

  /// Creates a new [GetSandboxCustomImageArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sandboxCustomImageName] The name of the sandbox custom image.
  const GetSandboxCustomImageArgs({
    required this.clusterName,
    required this.resourceGroupName,
    required this.sandboxCustomImageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'sandboxCustomImageName': sandboxCustomImageName,
    };
  }

  factory GetSandboxCustomImageArgs.fromMap(Map<String, dynamic> map) {
    return GetSandboxCustomImageArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sandboxCustomImageName: pulumi.Input.fromValue(map['sandboxCustomImageName'] as String),
    );
  }
}

