// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_bucketized_allocation_response.dart';
import 'akri_connector_template_persistent_volume_claim_response.dart';
import 'akri_connector_template_trust_list_response.dart';
import 'akri_connectors_secret_response.dart';

/// AkriConnectorTemplateRuntimeStatefulSetConfiguration properties.
class AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse {
  /// Additional configuration for the image of the managed configuration.
  final Map<String, String>? additionalConfiguration;
  /// Allocation settings for the managed configuration.
  final AkriConnectorTemplateBucketizedAllocationResponse? allocation;
  /// Managed configuration types.
  /// Expected value is 'StatefulSetConfiguration'.
  final String managedConfigurationType;
  /// The persistent volume claim templates for the managed configuration.
  /// See https://raw.githubusercontent.com/kubernetes/kubernetes/refs/heads/master/api/openapi-spec/v3/apis__apps__v1_openapi.json.
  final List<dynamic>? persistentVolumeClaimTemplates;
  /// The persistent volume claims for the managed configuration.
  final List<AkriConnectorTemplatePersistentVolumeClaimResponse>? persistentVolumeClaims;
  /// Connector secrets that will be mounted onto all connector instances.
  final List<AkriConnectorsSecretResponse>? secrets;
  /// The stateful set configuration settings. This corresponds to the Kubernetes StatefulSet resource.
  /// See https://raw.githubusercontent.com/kubernetes/kubernetes/refs/heads/master/api/openapi-spec/v3/apis__apps__v1_openapi.json#/components/schemas/io.k8s.api.apps.v1.StatefulSetSpec
  final dynamic statefulSetConfigurationSettings;
  /// Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  final AkriConnectorTemplateTrustListResponse? trustSettings;

  /// Creates a new [AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse].
  /// [additionalConfiguration] Additional configuration for the image of the managed configuration.
  /// [allocation] Allocation settings for the managed configuration.
  /// [managedConfigurationType] Managed configuration types.
  /// [persistentVolumeClaimTemplates] The persistent volume claim templates for the managed configuration.
  /// [persistentVolumeClaims] The persistent volume claims for the managed configuration.
  /// [secrets] Connector secrets that will be mounted onto all connector instances.
  /// [statefulSetConfigurationSettings] The stateful set configuration settings. This corresponds to the Kubernetes StatefulSet resource.
  /// [trustSettings] Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse({
    this.additionalConfiguration,
    this.allocation,
    required this.managedConfigurationType,
    this.persistentVolumeClaimTemplates,
    this.persistentVolumeClaims,
    this.secrets,
    required this.statefulSetConfigurationSettings,
    this.trustSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration,
      'allocation': ?allocation == null ? null : allocation!.toMap(),
      'managedConfigurationType': managedConfigurationType,
      'persistentVolumeClaimTemplates': ?persistentVolumeClaimTemplates,
      'persistentVolumeClaims': ?persistentVolumeClaims == null ? null : pulumi.Input.encodeList<AkriConnectorTemplatePersistentVolumeClaimResponse, Map<String, dynamic>>(persistentVolumeClaims!, (value) => value.toMap()),
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<AkriConnectorsSecretResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'statefulSetConfigurationSettings': statefulSetConfigurationSettings,
      'trustSettings': ?trustSettings == null ? null : trustSettings!.toMap(),
    };
  }

  factory AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : (map['additionalConfiguration'] as Map).cast<String, String>(),
      allocation: map['allocation'] == null ? null : AkriConnectorTemplateBucketizedAllocationResponse.fromMap((map['allocation'] as Map).cast<String, dynamic>()),
      managedConfigurationType: map['managedConfigurationType'] as String,
      persistentVolumeClaimTemplates: map['persistentVolumeClaimTemplates'] == null ? null : (map['persistentVolumeClaimTemplates'] as List).cast<dynamic>(),
      persistentVolumeClaims: map['persistentVolumeClaims'] == null ? null : pulumi.Input.decodeList<AkriConnectorTemplatePersistentVolumeClaimResponse>(map['persistentVolumeClaims'], (value) => AkriConnectorTemplatePersistentVolumeClaimResponse.fromMap((value as Map).cast<String, dynamic>())),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<AkriConnectorsSecretResponse>(map['secrets'], (value) => AkriConnectorsSecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      statefulSetConfigurationSettings: map['statefulSetConfigurationSettings'],
      trustSettings: map['trustSettings'] == null ? null : AkriConnectorTemplateTrustListResponse.fromMap((map['trustSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

