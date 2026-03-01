// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazurespringboot_get_springbootserver_args_doc}
/// Arguments for getSpringbootserver.
/// {@endtemplate}
/// {@macro pulumi_offazurespringboot_get_springbootserver_args_doc}
class GetSpringbootserverArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The springbootsites name.
  final pulumi.Input<String> siteName;
  /// The springbootservers name.
  final pulumi.Input<String> springbootserversName;

  /// Creates a new [GetSpringbootserverArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The springbootsites name.
  /// [springbootserversName] The springbootservers name.
  GetSpringbootserverArgs({
    required String resourceGroupName,
    required String siteName,
    required String springbootserversName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      springbootserversName = pulumi.Input.asInput<String>(springbootserversName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'springbootserversName': springbootserversName,
    };
  }

  factory GetSpringbootserverArgs.fromMap(Map<String, dynamic> map) {
    return GetSpringbootserverArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
      springbootserversName: map['springbootserversName'] as String,
    );
  }
}

