// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_client_group_args_doc}
/// Arguments for getClientGroup.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_client_group_args_doc}
class GetClientGroupArgs {
  /// Name of the client group.
  final pulumi.Input<String> clientGroupName;
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetClientGroupArgs].
  /// [clientGroupName] Name of the client group.
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetClientGroupArgs({
    required this.clientGroupName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientGroupName': clientGroupName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClientGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetClientGroupArgs(
      clientGroupName: pulumi.Input.fromValue(map['clientGroupName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

