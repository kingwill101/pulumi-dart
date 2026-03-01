// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_integration_runtime_object_metadatum_args_doc}
/// Arguments for getIntegrationRuntimeObjectMetadatum.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_integration_runtime_object_metadatum_args_doc}
class GetIntegrationRuntimeObjectMetadatumArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The integration runtime name.
  final pulumi.Input<String> integrationRuntimeName;
  /// Metadata path.
  final pulumi.Input<String>? metadataPath;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationRuntimeObjectMetadatumArgs].
  /// [factoryName] The factory name.
  /// [integrationRuntimeName] The integration runtime name.
  /// [metadataPath] Metadata path.
  /// [resourceGroupName] The resource group name.
  GetIntegrationRuntimeObjectMetadatumArgs({
    required String factoryName,
    required String integrationRuntimeName,
    String? metadataPath,
    required String resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      integrationRuntimeName = pulumi.Input.asInput<String>(integrationRuntimeName),
      metadataPath = pulumi.Input.asOptionalInput<String>(metadataPath),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'integrationRuntimeName': integrationRuntimeName,
      'metadataPath': ?metadataPath,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationRuntimeObjectMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeObjectMetadatumArgs(
      factoryName: map['factoryName'] as String,
      integrationRuntimeName: map['integrationRuntimeName'] as String,
      metadataPath: map['metadataPath'] == null ? null : map['metadataPath'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

