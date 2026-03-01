// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_bucketized_allocation_response.dart';
import 'akri_connector_template_persistent_volume_claim_response.dart';
import 'akri_connector_template_runtime_image_configuration_settings_response.dart';
import 'akri_connector_template_trust_list_response.dart';
import 'akri_connectors_secret_response.dart';

/// AkriConnectorTemplateRuntimeImageConfiguration properties.
class AkriConnectorTemplateRuntimeImageConfigurationResponse {
  /// Additional configuration for the image of the managed configuration.
  final Map<String, String>? additionalConfiguration;
  /// Allocation settings for the managed configuration.
  final AkriConnectorTemplateBucketizedAllocationResponse? allocation;
  /// The image configuration settings.
  final AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse imageConfigurationSettings;
  /// Managed configuration types.
  /// Expected value is 'ImageConfiguration'.
  final String managedConfigurationType;
  /// The persistent volume claim templates for the managed configuration.
  /// See https://raw.githubusercontent.com/kubernetes/kubernetes/refs/heads/master/api/openapi-spec/v3/apis__apps__v1_openapi.json.
  final List<dynamic>? persistentVolumeClaimTemplates;
  /// The persistent volume claims for the managed configuration.
  final List<AkriConnectorTemplatePersistentVolumeClaimResponse>? persistentVolumeClaims;
  /// Connector secrets that will be mounted onto all connector instances.
  final List<AkriConnectorsSecretResponse>? secrets;
  /// Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  final AkriConnectorTemplateTrustListResponse? trustSettings;

  /// Creates a new [AkriConnectorTemplateRuntimeImageConfigurationResponse].
  /// [additionalConfiguration] Additional configuration for the image of the managed configuration.
  /// [allocation] Allocation settings for the managed configuration.
  /// [imageConfigurationSettings] The image configuration settings.
  /// [managedConfigurationType] Managed configuration types.
  /// [persistentVolumeClaimTemplates] The persistent volume claim templates for the managed configuration.
  /// [persistentVolumeClaims] The persistent volume claims for the managed configuration.
  /// [secrets] Connector secrets that will be mounted onto all connector instances.
  /// [trustSettings] Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  AkriConnectorTemplateRuntimeImageConfigurationResponse({
    this.additionalConfiguration,
    this.allocation,
    required this.imageConfigurationSettings,
    required this.managedConfigurationType,
    this.persistentVolumeClaimTemplates,
    this.persistentVolumeClaims,
    this.secrets,
    this.trustSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration,
      'allocation': ?allocation == null ? null : allocation!.toMap(),
      'imageConfigurationSettings': imageConfigurationSettings.toMap(),
      'managedConfigurationType': managedConfigurationType,
      'persistentVolumeClaimTemplates': ?persistentVolumeClaimTemplates,
      'persistentVolumeClaims': ?persistentVolumeClaims == null ? null : pulumi.Input.encodeList<AkriConnectorTemplatePersistentVolumeClaimResponse, Map<String, dynamic>>(persistentVolumeClaims!, (value) => value.toMap()),
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<AkriConnectorsSecretResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'trustSettings': ?trustSettings == null ? null : trustSettings!.toMap(),
    };
  }

  factory AkriConnectorTemplateRuntimeImageConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateRuntimeImageConfigurationResponse(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : (map['additionalConfiguration'] as Map).cast<String, String>(),
      allocation: map['allocation'] == null ? null : AkriConnectorTemplateBucketizedAllocationResponse.fromMap((map['allocation'] as Map).cast<String, dynamic>()),
      imageConfigurationSettings: AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse.fromMap((map['imageConfigurationSettings'] as Map).cast<String, dynamic>()),
      managedConfigurationType: map['managedConfigurationType'] as String,
      persistentVolumeClaimTemplates: map['persistentVolumeClaimTemplates'] == null ? null : (map['persistentVolumeClaimTemplates'] as List).cast<dynamic>(),
      persistentVolumeClaims: map['persistentVolumeClaims'] == null ? null : pulumi.Input.decodeList<AkriConnectorTemplatePersistentVolumeClaimResponse>(map['persistentVolumeClaims'], (value) => AkriConnectorTemplatePersistentVolumeClaimResponse.fromMap((value as Map).cast<String, dynamic>())),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<AkriConnectorsSecretResponse>(map['secrets'], (value) => AkriConnectorsSecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      trustSettings: map['trustSettings'] == null ? null : AkriConnectorTemplateTrustListResponse.fromMap((map['trustSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

