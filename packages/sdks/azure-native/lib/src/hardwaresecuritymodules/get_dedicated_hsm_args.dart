// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hardwaresecuritymodules_get_dedicated_hsm_args_doc}
/// Arguments for getDedicatedHsm.
/// {@endtemplate}
/// {@macro pulumi_hardwaresecuritymodules_get_dedicated_hsm_args_doc}
class GetDedicatedHsmArgs {
  /// Name of the dedicated Hsm
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDedicatedHsmArgs].
  /// [name] Name of the dedicated Hsm
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDedicatedHsmArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDedicatedHsmArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHsmArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

