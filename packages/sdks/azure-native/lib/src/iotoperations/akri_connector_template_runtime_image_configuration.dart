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
  final pulumi.Input<Map<String, String>>? additionalConfiguration;
  /// Allocation settings for the managed configuration.
  final pulumi.Input<AkriConnectorTemplateBucketizedAllocation>? allocation;
  /// The image configuration settings.
  final pulumi.Input<AkriConnectorTemplateRuntimeImageConfigurationSettings> imageConfigurationSettings;
  /// Managed configuration types.
  /// Expected value is 'ImageConfiguration'.
  final pulumi.Input<String> managedConfigurationType;
  /// The persistent volume claim templates for the managed configuration.
  /// See https://raw.githubusercontent.com/kubernetes/kubernetes/refs/heads/master/api/openapi-spec/v3/apis__apps__v1_openapi.json.
  final pulumi.Input<List<dynamic>>? persistentVolumeClaimTemplates;
  /// The persistent volume claims for the managed configuration.
  final pulumi.Input<List<AkriConnectorTemplatePersistentVolumeClaim>>? persistentVolumeClaims;
  /// Connector secrets that will be mounted onto all connector instances.
  final pulumi.Input<List<AkriConnectorsSecret>>? secrets;
  /// Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  final pulumi.Input<AkriConnectorTemplateTrustList>? trustSettings;

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
      'allocation': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateBucketizedAllocation, Map<String, dynamic>>(allocation, (value) => value.toMap()),
      'imageConfigurationSettings': pulumi.Input.mapInputValue<AkriConnectorTemplateRuntimeImageConfigurationSettings, Map<String, dynamic>>(imageConfigurationSettings, (value) => value.toMap()),
      'managedConfigurationType': managedConfigurationType,
      'persistentVolumeClaimTemplates': ?persistentVolumeClaimTemplates,
      'persistentVolumeClaims': ?pulumi.Input.mapOptionalInputValue<List<AkriConnectorTemplatePersistentVolumeClaim>, List<Map<String, dynamic>>>(persistentVolumeClaims, (value) => pulumi.Input.encodeList<AkriConnectorTemplatePersistentVolumeClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<AkriConnectorsSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<AkriConnectorsSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustSettings': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateTrustList, Map<String, dynamic>>(trustSettings, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplateRuntimeImageConfiguration.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateRuntimeImageConfiguration(
      additionalConfiguration: (() { final guardedValue = map['additionalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      allocation: (() { final guardedValue = map['allocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateBucketizedAllocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageConfigurationSettings: pulumi.Input.fromValue(AkriConnectorTemplateRuntimeImageConfigurationSettings.fromMap((map['imageConfigurationSettings']! as Map).cast<String, dynamic>())),
      managedConfigurationType: pulumi.Input.fromValue(map['managedConfigurationType'] as String),
      persistentVolumeClaimTemplates: (() { final guardedValue = map['persistentVolumeClaimTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      persistentVolumeClaims: (() { final guardedValue = map['persistentVolumeClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AkriConnectorTemplatePersistentVolumeClaim>(guardedValue, (value) => AkriConnectorTemplatePersistentVolumeClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AkriConnectorsSecret>(guardedValue, (value) => AkriConnectorsSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trustSettings: (() { final guardedValue = map['trustSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateTrustList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

