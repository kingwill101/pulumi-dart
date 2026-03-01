// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_graph_get_services_account_get_services_account_args_doc}
/// Arguments for getServicesAccount.
/// {@endtemplate}
/// {@macro pulumi_graph_get_services_account_get_services_account_args_doc}
class GetServicesAccountArgs {
  /// The name of the Graph Services Account.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Graph Services Account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServicesAccountArgs].
  /// [name] The name of the Graph Services Account.
  /// [resourceGroupName] The name of the Resource Group where the Graph Services Account exists.
  GetServicesAccountArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServicesAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetServicesAccountArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

