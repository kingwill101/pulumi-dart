// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_reference_properties.dart';

/// {@template pulumi_edge_configuration_reference_args_doc}
/// The set of arguments for ConfigurationReference.
/// {@endtemplate}
/// {@macro pulumi_edge_configuration_reference_args_doc}
class ConfigurationReferenceArgs {
  /// The name of the ConfigurationReference
  final pulumi.Input<String>? configurationReferenceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ConfigurationReferenceProperties>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [ConfigurationReferenceArgs].
  /// [configurationReferenceName] The name of the ConfigurationReference
  /// [properties] The resource-specific properties for this resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  ConfigurationReferenceArgs({
    String? configurationReferenceName,
    ConfigurationReferenceProperties? properties,
    required String resourceUri,
  }) :
      configurationReferenceName = pulumi.Input.asOptionalInput<String>(configurationReferenceName),
      properties = pulumi.Input.asOptionalInput<ConfigurationReferenceProperties>(properties),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationReferenceName': ?configurationReferenceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationReferenceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory ConfigurationReferenceArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationReferenceArgs(
      configurationReferenceName: map['configurationReferenceName'] == null ? null : map['configurationReferenceName'] as String,
      properties: map['properties'] == null ? null : ConfigurationReferenceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceUri: map['resourceUri'] as String,
    );
  }
}

