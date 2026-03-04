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
    required this.factoryName,
    required this.integrationRuntimeName,
    this.metadataPath,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'integrationRuntimeName': integrationRuntimeName,
      'metadataPath': ?metadataPath,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationRuntimeObjectMetadatumArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIntegrationRuntimeObjectMetadatumArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      integrationRuntimeName: pulumi.Input.fromValue(
        map['integrationRuntimeName'] as String,
      ),
      metadataPath: (() {
        final guardedValue = map['metadataPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
