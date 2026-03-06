// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agricultureplatform_list_agri_service_available_solutions_args_doc}
/// Arguments for listAgriServiceAvailableSolutions.
/// {@endtemplate}
/// {@macro pulumi_agricultureplatform_list_agri_service_available_solutions_args_doc}
class ListAgriServiceAvailableSolutionsArgs {
  /// The name of the AgriService resource.
  final pulumi.Input<String> agriServiceResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAgriServiceAvailableSolutionsArgs].
  /// [agriServiceResourceName] The name of the AgriService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListAgriServiceAvailableSolutionsArgs({
    required this.agriServiceResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agriServiceResourceName': agriServiceResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAgriServiceAvailableSolutionsArgs.fromMap(Map<String, dynamic> map) {
    return ListAgriServiceAvailableSolutionsArgs(
      agriServiceResourceName: pulumi.Input.fromValue(map['agriServiceResourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

