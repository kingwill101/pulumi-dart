// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_template_properties.dart';

/// {@template pulumi_edge_solution_template_args_doc}
/// The set of arguments for SolutionTemplate.
/// {@endtemplate}
/// {@macro pulumi_edge_solution_template_args_doc}
class SolutionTemplateArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<SolutionTemplateProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SolutionTemplate
  final pulumi.Input<String>? solutionTemplateName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SolutionTemplateArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionTemplateName] The name of the SolutionTemplate
  /// [tags] Resource tags.
  SolutionTemplateArgs({
    String? location,
    SolutionTemplateProperties? properties,
    required String resourceGroupName,
    String? solutionTemplateName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<SolutionTemplateProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionTemplateName = pulumi.Input.asOptionalInput<String>(solutionTemplateName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<SolutionTemplateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionTemplateName': ?solutionTemplateName,
      'tags': ?tags,
    };
  }

  factory SolutionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return SolutionTemplateArgs(
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : SolutionTemplateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      solutionTemplateName: map['solutionTemplateName'] == null ? null : map['solutionTemplateName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

