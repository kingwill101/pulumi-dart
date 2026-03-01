// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudhealth_get_health_model_args_doc}
/// Arguments for getHealthModel.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_get_health_model_args_doc}
class GetHealthModelArgs {
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHealthModelArgs].
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetHealthModelArgs({
    required pulumi.Output<String> healthModelName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHealthModelArgs.fromMap(Map<String, dynamic> map) {
    return GetHealthModelArgs(
      healthModelName: pulumi.Output.create<String>(map['healthModelName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

