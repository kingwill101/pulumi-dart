// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_bucketized_allocation.dart';
import 'akri_connector_template_persistent_volume_claim.dart';
import 'akri_connector_template_runtime_image_configuration_settings.dart';
import 'akri_connector_template_trust_list.dart';
import 'akri_connectors_secret.dart';

/// AkriConnectorTemplateRuntimeImageConfiguration properties.
class AkriConnectorTemplateRuntimeImageConfiguration {
  /// Additional configuration for the image of the managed configuration.
  final Map<String, String>? additionalConfiguration;
  /// Allocation settings for the managed configuration.
  final AkriConnectorTemplateBucketizedAllocation? allocation;
  /// The image configuration settings.
  final AkriConnectorTemplateRuntimeImageConfigurationSettings imageConfigurationSettings;
  /// Managed configuration types.
  /// Expected value is 'ImageConfiguration'.
  final String managedConfigurationType;
  /// The persistent volume claim templates for the managed configuration.
  /// See https://raw.githubusercontent.com/kubernetes/kubernetes/refs/heads/master/api/openapi-spec/v3/apis__apps__v1_openapi.json.
  final List<dynamic>? persistentVolumeClaimTemplates;
  /// The persistent volume claims for the managed configuration.
  final List<AkriConnectorTemplatePersistentVolumeClaim>? persistentVolumeClaims;
  /// Connector secrets that will be mounted onto all connector instances.
  final List<AkriConnectorsSecret>? secrets;
  /// Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  final AkriConnectorTemplateTrustList? trustSettings;

  /// Creates a new [AkriConnectorTemplateRuntimeImageConfiguration].
  /// [additionalConfiguration] Additional configuration for the image of the managed configuration.
  /// [allocation] Allocation settings for the managed configuration.
  /// [imageConfigurationSettings] The image configuration settings.
  /// [managedConfigurationType] Managed configuration types.
  /// [persistentVolumeClaimTemplates] The persistent volume claim templates for the managed configuration.
  /// [persistentVolumeClaims] The persistent volume claims for the managed configuration.
  /// [secrets] Connector secrets that will be mounted onto all connector instances.
  /// [trustSettings] Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  AkriConnectorTemplateRuntimeImageConfiguration({
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
      'persistentVolumeClaims': ?persistentVolumeClaims == null ? null : pulumi.Input.encodeList<AkriConnectorTemplatePersistentVolumeClaim, Map<String, dynamic>>(persistentVolumeClaims!, (value) => value.toMap()),
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<AkriConnectorsSecret, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'trustSettings': ?trustSettings == null ? null : trustSettings!.toMap(),
    };
  }

  factory AkriConnectorTemplateRuntimeImageConfiguration.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateRuntimeImageConfiguration(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : (map['additionalConfiguration'] as Map).cast<String, String>(),
      allocation: map['allocation'] == null ? null : AkriConnectorTemplateBucketizedAllocation.fromMap((map['allocation'] as Map).cast<String, dynamic>()),
      imageConfigurationSettings: AkriConnectorTemplateRuntimeImageConfigurationSettings.fromMap((map['imageConfigurationSettings'] as Map).cast<String, dynamic>()),
      managedConfigurationType: map['managedConfigurationType'] as String,
      persistentVolumeClaimTemplates: map['persistentVolumeClaimTemplates'] == null ? null : (map['persistentVolumeClaimTemplates'] as List).cast<dynamic>(),
      persistentVolumeClaims: map['persistentVolumeClaims'] == null ? null : pulumi.Input.decodeList<AkriConnectorTemplatePersistentVolumeClaim>(map['persistentVolumeClaims'], (value) => AkriConnectorTemplatePersistentVolumeClaim.fromMap((value as Map).cast<String, dynamic>())),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<AkriConnectorsSecret>(map['secrets'], (value) => AkriConnectorsSecret.fromMap((value as Map).cast<String, dynamic>())),
      trustSettings: map['trustSettings'] == null ? null : AkriConnectorTemplateTrustList.fromMap((map['trustSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

