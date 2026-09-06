// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_template_properties.dart';

/// {@template pulumi_edge_solution_template_args_doc}
/// The set of arguments for SolutionTemplate.
/// {@endtemplate}
/// {@macro pulumi_edge_solution_template_args_doc}
class SolutionTemplateArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<SolutionTemplateProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SolutionTemplate
  final pulumi.Input<String?>? solutionTemplateName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SolutionTemplateArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionTemplateName] The name of the SolutionTemplate
  /// [tags] Resource tags.
  const SolutionTemplateArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.solutionTemplateName,
    this.tags,
  });

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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SolutionTemplateProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      solutionTemplateName: (() { final guardedValue = map['solutionTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
