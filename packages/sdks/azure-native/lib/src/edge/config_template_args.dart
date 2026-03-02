// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_template_properties.dart';

/// {@template pulumi_edge_config_template_args_doc}
/// The set of arguments for ConfigTemplate.
/// {@endtemplate}
/// {@macro pulumi_edge_config_template_args_doc}
class ConfigTemplateArgs {
  /// The name of the ConfigTemplate
  final pulumi.Input<String>? configTemplateName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ConfigTemplateProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigTemplateArgs].
  /// [configTemplateName] The name of the ConfigTemplate
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ConfigTemplateArgs({
    this.configTemplateName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configTemplateName': ?configTemplateName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigTemplateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ConfigTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ConfigTemplateArgs(
      configTemplateName: map['configTemplateName'] == null ? null : (map['configTemplateName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (ConfigTemplateProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

