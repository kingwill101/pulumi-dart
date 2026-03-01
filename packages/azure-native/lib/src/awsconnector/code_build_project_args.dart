// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_build_project_properties.dart';

/// {@template pulumi_awsconnector_code_build_project_args_doc}
/// The set of arguments for CodeBuildProject.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_code_build_project_args_doc}
class CodeBuildProjectArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of CodeBuildProject
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<CodeBuildProjectProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CodeBuildProjectArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of CodeBuildProject
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CodeBuildProjectArgs({
    String? location,
    String? name,
    CodeBuildProjectProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<CodeBuildProjectProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<CodeBuildProjectProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CodeBuildProjectArgs.fromMap(Map<String, dynamic> map) {
    return CodeBuildProjectArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : CodeBuildProjectProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

