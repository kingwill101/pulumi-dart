// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_get_resource_guard_args_doc}
/// Arguments for getResourceGuard.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_get_resource_guard_args_doc}
class GetResourceGuardArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of ResourceGuard
  final pulumi.Input<String> resourceGuardsName;

  /// Creates a new [GetResourceGuardArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceGuardsName] The name of ResourceGuard
  GetResourceGuardArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceGuardsName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceGuardsName = pulumi.Input.asInput<String>(resourceGuardsName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceGuardsName': resourceGuardsName,
    };
  }

  factory GetResourceGuardArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGuardArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceGuardsName: pulumi.Output.create<String>(map['resourceGuardsName'] as String),
    );
  }
}

