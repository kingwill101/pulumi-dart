// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'springbootapps_properties.dart';

/// {@template pulumi_offazurespringboot_springbootapp_args_doc}
/// The set of arguments for Springbootapp.
/// {@endtemplate}
/// {@macro pulumi_offazurespringboot_springbootapp_args_doc}
class SpringbootappArgs {
  /// The springbootapps resource definition.
  final pulumi.Input<SpringbootappsProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The springbootsites name.
  final pulumi.Input<String> siteName;
  /// The springbootapps name.
  final pulumi.Input<String>? springbootappsName;

  /// Creates a new [SpringbootappArgs].
  /// [properties] The springbootapps resource definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The springbootsites name.
  /// [springbootappsName] The springbootapps name.
  SpringbootappArgs({
    SpringbootappsProperties? properties,
    required String resourceGroupName,
    required String siteName,
    String? springbootappsName,
  }) :
      properties = pulumi.Input.asOptionalInput<SpringbootappsProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      springbootappsName = pulumi.Input.asOptionalInput<String>(springbootappsName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SpringbootappsProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'springbootappsName': ?springbootappsName,
    };
  }

  factory SpringbootappArgs.fromMap(Map<String, dynamic> map) {
    return SpringbootappArgs(
      properties: map['properties'] == null ? null : SpringbootappsProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
      springbootappsName: map['springbootappsName'] == null ? null : map['springbootappsName'] as String,
    );
  }
}

