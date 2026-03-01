// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_configuration_reference_args_doc}
/// Arguments for getConfigurationReference.
/// {@endtemplate}
/// {@macro pulumi_edge_get_configuration_reference_args_doc}
class GetConfigurationReferenceArgs {
  /// The name of the ConfigurationReference
  final pulumi.Input<String> configurationReferenceName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetConfigurationReferenceArgs].
  /// [configurationReferenceName] The name of the ConfigurationReference
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetConfigurationReferenceArgs({
    required pulumi.Output<String> configurationReferenceName,
    required pulumi.Output<String> resourceUri,
  }) :
      configurationReferenceName = pulumi.Input.asInput<String>(configurationReferenceName),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationReferenceName': configurationReferenceName,
      'resourceUri': resourceUri,
    };
  }

  factory GetConfigurationReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationReferenceArgs(
      configurationReferenceName: pulumi.Output.create<String>(map['configurationReferenceName'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

