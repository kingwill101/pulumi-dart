// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wafv2_logging_configuration_properties.dart';

/// {@template pulumi_awsconnector_wafv2_logging_configuration_args_doc}
/// The set of arguments for Wafv2LoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_wafv2_logging_configuration_args_doc}
class Wafv2LoggingConfigurationArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of Wafv2LoggingConfiguration
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<Wafv2LoggingConfigurationProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Wafv2LoggingConfigurationArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of Wafv2LoggingConfiguration
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  Wafv2LoggingConfigurationArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<Wafv2LoggingConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory Wafv2LoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return Wafv2LoggingConfigurationArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (Wafv2LoggingConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

