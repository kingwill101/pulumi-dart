// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_result_user_source_info_response.dart';
import 'deployment_instance_response.dart';
import 'deployment_settings_response.dart';

/// Deployment resource properties payload
class DeploymentResourcePropertiesResponse {
  /// Indicates whether the Deployment is active
  final bool? active;
  /// Deployment settings of the Deployment
  final DeploymentSettingsResponse? deploymentSettings;
  /// Collection of instances belong to the Deployment
  final List<DeploymentInstanceResponse> instances;
  /// Provisioning state of the Deployment
  final String provisioningState;
  /// Uploaded source information of the deployment.
  final BuildResultUserSourceInfoResponse? source;
  /// Status of the Deployment
  final String status;

  /// Creates a new [DeploymentResourcePropertiesResponse].
  /// [active] Indicates whether the Deployment is active
  /// [deploymentSettings] Deployment settings of the Deployment
  /// [instances] Collection of instances belong to the Deployment
  /// [provisioningState] Provisioning state of the Deployment
  /// [source] Uploaded source information of the deployment.
  /// [status] Status of the Deployment
  DeploymentResourcePropertiesResponse({
    this.active,
    this.deploymentSettings,
    required this.instances,
    required this.provisioningState,
    this.source,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'deploymentSettings': ?deploymentSettings == null ? null : deploymentSettings!.toMap(),
      'instances': pulumi.Input.encodeList<DeploymentInstanceResponse, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'source': ?source == null ? null : source!.toMap(),
      'status': status,
    };
  }

  factory DeploymentResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentResourcePropertiesResponse(
      active: map['active'] == null ? null : map['active'] as bool,
      deploymentSettings: map['deploymentSettings'] == null ? null : DeploymentSettingsResponse.fromMap((map['deploymentSettings'] as Map).cast<String, dynamic>()),
      instances: pulumi.Input.decodeList<DeploymentInstanceResponse>(map['instances'], (value) => DeploymentInstanceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      source: map['source'] == null ? null : BuildResultUserSourceInfoResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}

