// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'springbootservers_properties.dart';

/// {@template pulumi_offazurespringboot_springbootserver_args_doc}
/// The set of arguments for Springbootserver.
/// {@endtemplate}
/// {@macro pulumi_offazurespringboot_springbootserver_args_doc}
class SpringbootserverArgs {
  /// The springbootservers resource definition.
  final pulumi.Input<SpringbootserversProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The springbootsites name.
  final pulumi.Input<String> siteName;
  /// The springbootservers name.
  final pulumi.Input<String>? springbootserversName;

  /// Creates a new [SpringbootserverArgs].
  /// [properties] The springbootservers resource definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The springbootsites name.
  /// [springbootserversName] The springbootservers name.
  SpringbootserverArgs({
    SpringbootserversProperties? properties,
    required String resourceGroupName,
    required String siteName,
    String? springbootserversName,
  }) :
      properties = pulumi.Input.asOptionalInput<SpringbootserversProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      springbootserversName = pulumi.Input.asOptionalInput<String>(springbootserversName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SpringbootserversProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'springbootserversName': ?springbootserversName,
    };
  }

  factory SpringbootserverArgs.fromMap(Map<String, dynamic> map) {
    return SpringbootserverArgs(
      properties: map['properties'] == null ? null : SpringbootserversProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
      springbootserversName: map['springbootserversName'] == null ? null : map['springbootserversName'] as String,
    );
  }
}

