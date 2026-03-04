// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_context_args_doc}
/// Arguments for getContext.
/// {@endtemplate}
/// {@macro pulumi_edge_get_context_args_doc}
class GetContextArgs {
  /// The name of the Context.
  final pulumi.Input<String> contextName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetContextArgs].
  /// [contextName] The name of the Context.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetContextArgs({required this.contextName, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': contextName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetContextArgs.fromMap(Map<String, dynamic> map) {
    return GetContextArgs(
      contextName: pulumi.Input.fromValue(map['contextName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
