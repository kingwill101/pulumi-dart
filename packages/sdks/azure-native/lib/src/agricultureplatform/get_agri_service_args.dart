// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agricultureplatform_get_agri_service_args_doc}
/// Arguments for getAgriService.
/// {@endtemplate}
/// {@macro pulumi_agricultureplatform_get_agri_service_args_doc}
class GetAgriServiceArgs {
  /// The name of the AgriService resource.
  final pulumi.Input<String> agriServiceResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAgriServiceArgs].
  /// [agriServiceResourceName] The name of the AgriService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAgriServiceArgs({
    required pulumi.Output<String> agriServiceResourceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      agriServiceResourceName = pulumi.Input.asInput<String>(agriServiceResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agriServiceResourceName': agriServiceResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAgriServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetAgriServiceArgs(
      agriServiceResourceName: pulumi.Output.create<String>(map['agriServiceResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

