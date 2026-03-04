// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_configuration_group_schema_args_doc}
/// Arguments for getConfigurationGroupSchema.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_configuration_group_schema_args_doc}
class GetConfigurationGroupSchemaArgs {
  /// The name of the configuration group schema.
  final pulumi.Input<String> configurationGroupSchemaName;

  /// The name of the publisher.
  final pulumi.Input<String> publisherName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationGroupSchemaArgs].
  /// [configurationGroupSchemaName] The name of the configuration group schema.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConfigurationGroupSchemaArgs({
    required this.configurationGroupSchemaName,
    required this.publisherName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaName': configurationGroupSchemaName,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationGroupSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationGroupSchemaArgs(
      configurationGroupSchemaName: pulumi.Input.fromValue(
        map['configurationGroupSchemaName'] as String,
      ),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
