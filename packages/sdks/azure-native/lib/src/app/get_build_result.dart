// ignore_for_file: unused_element, unnecessary_cast

import 'build_configuration_response.dart';
import 'container_registry_with_custom_image_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBuild.
class GetBuildResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Status of the build once it has been provisioned.
  final String buildStatus;
  /// Configuration of the build.
  final BuildConfigurationResponse? configuration;
  /// Container registry that the final image will be uploaded to.
  final ContainerRegistryWithCustomImageResponse? destinationContainerRegistry;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Endpoint from which the build logs can be streamed.
  final String logStreamEndpoint;
  /// The name of the resource
  final String name;
  /// Build provisioning state.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Endpoint to use to retrieve an authentication token for log streaming and uploading source code.
  final String tokenEndpoint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Endpoint to which the source code should be uploaded.
  final String uploadEndpoint;

  /// Creates a new [GetBuildResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [buildStatus] Status of the build once it has been provisioned.
  /// [configuration] Configuration of the build.
  /// [destinationContainerRegistry] Container registry that the final image will be uploaded to.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [logStreamEndpoint] Endpoint from which the build logs can be streamed.
  /// [name] The name of the resource
  /// [provisioningState] Build provisioning state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tokenEndpoint] Endpoint to use to retrieve an authentication token for log streaming and uploading source code.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uploadEndpoint] Endpoint to which the source code should be uploaded.
  GetBuildResult({
    required this.azureApiVersion,
    required this.buildStatus,
    this.configuration,
    this.destinationContainerRegistry,
    required this.id,
    required this.logStreamEndpoint,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.tokenEndpoint,
    required this.type,
    required this.uploadEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'buildStatus': buildStatus,
      'configuration': ?configuration?.toMap(),
      'destinationContainerRegistry': ?destinationContainerRegistry?.toMap(),
      'id': id,
      'logStreamEndpoint': logStreamEndpoint,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tokenEndpoint': tokenEndpoint,
      'type': type,
      'uploadEndpoint': uploadEndpoint,
    };
  }

  factory GetBuildResult.fromMap(Map<String, dynamic> map) {
    return GetBuildResult(
      azureApiVersion: map['azureApiVersion'] as String,
      buildStatus: map['buildStatus'] as String,
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return BuildConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      destinationContainerRegistry: (() { final guardedValue = map['destinationContainerRegistry']; if (guardedValue == null) return null; return ContainerRegistryWithCustomImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      logStreamEndpoint: map['logStreamEndpoint'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tokenEndpoint: map['tokenEndpoint'] as String,
      type: map['type'] as String,
      uploadEndpoint: map['uploadEndpoint'] as String,
    );
  }
}

