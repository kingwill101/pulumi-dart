// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_group_schema_properties_format.dart';

/// {@template pulumi_hybridnetwork_configuration_group_schema_args_doc}
/// The set of arguments for ConfigurationGroupSchema.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_configuration_group_schema_args_doc}
class ConfigurationGroupSchemaArgs {
  /// The name of the configuration group schema.
  final pulumi.Input<String>? configurationGroupSchemaName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Configuration group schema properties.
  final pulumi.Input<ConfigurationGroupSchemaPropertiesFormat>? properties;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigurationGroupSchemaArgs].
  /// [configurationGroupSchemaName] The name of the configuration group schema.
  /// [location] The geo-location where the resource lives
  /// [properties] Configuration group schema properties.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ConfigurationGroupSchemaArgs({
    pulumi.Output<String>? configurationGroupSchemaName,
    pulumi.Output<String>? location,
    pulumi.Output<ConfigurationGroupSchemaPropertiesFormat>? properties,
    required pulumi.Output<String> publisherName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      configurationGroupSchemaName = pulumi.Input.asOptionalInput<String>(configurationGroupSchemaName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ConfigurationGroupSchemaPropertiesFormat>(properties),
      publisherName = pulumi.Input.asInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaName': ?configurationGroupSchemaName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationGroupSchemaPropertiesFormat, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ConfigurationGroupSchemaArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationGroupSchemaArgs(
      configurationGroupSchemaName: map['configurationGroupSchemaName'] == null ? null : pulumi.Output.create<String>(map['configurationGroupSchemaName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ConfigurationGroupSchemaPropertiesFormat>(ConfigurationGroupSchemaPropertiesFormat.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      publisherName: pulumi.Output.create<String>(map['publisherName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

