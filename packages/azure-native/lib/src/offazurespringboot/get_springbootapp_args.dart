// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazurespringboot_get_springbootapp_args_doc}
/// Arguments for getSpringbootapp.
/// {@endtemplate}
/// {@macro pulumi_offazurespringboot_get_springbootapp_args_doc}
class GetSpringbootappArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The springbootsites name.
  final pulumi.Input<String> siteName;
  /// The springbootapps name.
  final pulumi.Input<String> springbootappsName;

  /// Creates a new [GetSpringbootappArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The springbootsites name.
  /// [springbootappsName] The springbootapps name.
  GetSpringbootappArgs({
    required String resourceGroupName,
    required String siteName,
    required String springbootappsName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      springbootappsName = pulumi.Input.asInput<String>(springbootappsName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'springbootappsName': springbootappsName,
    };
  }

  factory GetSpringbootappArgs.fromMap(Map<String, dynamic> map) {
    return GetSpringbootappArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
      springbootappsName: map['springbootappsName'] as String,
    );
  }
}

