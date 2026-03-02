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
  final pulumi.Input<Map<String, String>>? additionalConfiguration;
  /// Allocation settings for the managed configuration.
  final pulumi.Input<AkriConnectorTemplateBucketizedAllocationResponse>? allocation;
  /// The image configuration settings.
  final pulumi.Input<AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse> imageConfigurationSettings;
  /// Managed configuration types.
  /// Expected value is 'ImageConfiguration'.
  final pulumi.Input<String> managedConfigurationType;
  /// The persistent volume claim templates for the managed configuration.
  /// See https://raw.githubusercontent.com/kubernetes/kubernetes/refs/heads/master/api/openapi-spec/v3/apis__apps__v1_openapi.json.
  final pulumi.Input<List<dynamic>>? persistentVolumeClaimTemplates;
  /// The persistent volume claims for the managed configuration.
  final pulumi.Input<List<AkriConnectorTemplatePersistentVolumeClaimResponse>>? persistentVolumeClaims;
  /// Connector secrets that will be mounted onto all connector instances.
  final pulumi.Input<List<AkriConnectorsSecretResponse>>? secrets;
  /// Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  final pulumi.Input<AkriConnectorTemplateTrustListResponse>? trustSettings;

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
      'allocation': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateBucketizedAllocationResponse, Map<String, dynamic>>(allocation, (value) => value.toMap()),
      'imageConfigurationSettings': pulumi.Input.mapInputValue<AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse, Map<String, dynamic>>(imageConfigurationSettings, (value) => value.toMap()),
      'managedConfigurationType': managedConfigurationType,
      'persistentVolumeClaimTemplates': ?persistentVolumeClaimTemplates,
      'persistentVolumeClaims': ?pulumi.Input.mapOptionalInputValue<List<AkriConnectorTemplatePersistentVolumeClaimResponse>, List<Map<String, dynamic>>>(persistentVolumeClaims, (value) => pulumi.Input.encodeList<AkriConnectorTemplatePersistentVolumeClaimResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<AkriConnectorsSecretResponse>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<AkriConnectorsSecretResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustSettings': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateTrustListResponse, Map<String, dynamic>>(trustSettings, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplateRuntimeImageConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateRuntimeImageConfigurationResponse(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : ((map['additionalConfiguration'] as Map).cast<String, String>()).input(),
      allocation: map['allocation'] == null ? null : (AkriConnectorTemplateBucketizedAllocationResponse.fromMap((map['allocation'] as Map).cast<String, dynamic>())).input(),
      imageConfigurationSettings: (AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse.fromMap((map['imageConfigurationSettings'] as Map).cast<String, dynamic>())).input(),
      managedConfigurationType: (map['managedConfigurationType'] as String).input(),
      persistentVolumeClaimTemplates: map['persistentVolumeClaimTemplates'] == null ? null : ((map['persistentVolumeClaimTemplates'] as List).cast<dynamic>()).input(),
      persistentVolumeClaims: map['persistentVolumeClaims'] == null ? null : (pulumi.Input.decodeList<AkriConnectorTemplatePersistentVolumeClaimResponse>(map['persistentVolumeClaims'], (value) => AkriConnectorTemplatePersistentVolumeClaimResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<AkriConnectorsSecretResponse>(map['secrets'], (value) => AkriConnectorsSecretResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trustSettings: map['trustSettings'] == null ? null : (AkriConnectorTemplateTrustListResponse.fromMap((map['trustSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

