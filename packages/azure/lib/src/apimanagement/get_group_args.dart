// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_group_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_group_get_group_args_doc}
class GetGroupArgs {
  /// The Name of the API Management Service in which this Group exists.
  final pulumi.Input<String> apiManagementName;
  /// The Name of the API Management Group.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group in which the API Management Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGroupArgs].
  /// [apiManagementName] The Name of the API Management Service in which this Group exists.
  /// [name] The Name of the API Management Group.
  /// [resourceGroupName] The Name of the Resource Group in which the API Management Service exists.
  GetGroupArgs({
    required String apiManagementName,
    required String name,
    required String resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      apiManagementName: map['apiManagementName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

