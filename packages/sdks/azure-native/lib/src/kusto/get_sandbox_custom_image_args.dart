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
  GetSandboxCustomImageArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sandboxCustomImageName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sandboxCustomImageName = pulumi.Input.asInput<String>(sandboxCustomImageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'sandboxCustomImageName': sandboxCustomImageName,
    };
  }

  factory GetSandboxCustomImageArgs.fromMap(Map<String, dynamic> map) {
    return GetSandboxCustomImageArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sandboxCustomImageName: pulumi.Output.create<String>(map['sandboxCustomImageName'] as String),
    );
  }
}

