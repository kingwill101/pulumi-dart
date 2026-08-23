// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_bucketized_allocation_response.dart';
import 'akri_connector_template_persistent_volume_claim_response.dart';
import 'akri_connector_template_trust_list_response.dart';
import 'akri_connectors_secret_response.dart';

/// AkriConnectorTemplateRuntimeStatefulSetConfiguration properties.
class AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse {
  /// Additional configuration for the image of the managed configuration.
  final pulumi.Input<Map<String, String>>? additionalConfiguration;
  /// Allocation settings for the managed configuration.
  final pulumi.Input<AkriConnectorTemplateBucketizedAllocationResponse>? allocation;
  /// Managed configuration types.
  /// Expected value is 'StatefulSetConfiguration'.
  final pulumi.Input<String> managedConfigurationType;
  /// The persistent volume claim templates for the managed configuration.
  /// See https://raw.githubusercontent.com/kubernetes/kubernetes/refs/heads/master/api/openapi-spec/v3/apis__apps__v1_openapi.json.
  final pulumi.Input<List<dynamic>>? persistentVolumeClaimTemplates;
  /// The persistent volume claims for the managed configuration.
  final pulumi.Input<List<AkriConnectorTemplatePersistentVolumeClaimResponse>>? persistentVolumeClaims;
  /// Connector secrets that will be mounted onto all connector instances.
  final pulumi.Input<List<AkriConnectorsSecretResponse>>? secrets;
  /// The stateful set configuration settings. This corresponds to the Kubernetes StatefulSet resource.
  /// See https://raw.githubusercontent.com/kubernetes/kubernetes/refs/heads/master/api/openapi-spec/v3/apis__apps__v1_openapi.json#/components/schemas/io.k8s.api.apps.v1.StatefulSetSpec
  final pulumi.Input<dynamic> statefulSetConfigurationSettings;
  /// Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  final pulumi.Input<AkriConnectorTemplateTrustListResponse>? trustSettings;

  /// Creates a new [AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse].
  /// [additionalConfiguration] Additional configuration for the image of the managed configuration.
  /// [allocation] Allocation settings for the managed configuration.
  /// [managedConfigurationType] Managed configuration types.
  /// [persistentVolumeClaimTemplates] The persistent volume claim templates for the managed configuration.
  /// [persistentVolumeClaims] The persistent volume claims for the managed configuration.
  /// [secrets] Connector secrets that will be mounted onto all connector instances.
  /// [statefulSetConfigurationSettings] The stateful set configuration settings. This corresponds to the Kubernetes StatefulSet resource.
  /// [trustSettings] Trust list for the connector. This is used to specify the certificates that all connector instances should trust.
  const AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse({
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
      'allocation': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateBucketizedAllocationResponse, Map<String, dynamic>>(allocation, (value) => value.toMap()),
      'managedConfigurationType': managedConfigurationType,
      'persistentVolumeClaimTemplates': ?persistentVolumeClaimTemplates,
      'persistentVolumeClaims': ?pulumi.Input.mapOptionalInputValue<List<AkriConnectorTemplatePersistentVolumeClaimResponse>, List<Map<String, dynamic>>>(persistentVolumeClaims, (value) => pulumi.Input.encodeList<AkriConnectorTemplatePersistentVolumeClaimResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<AkriConnectorsSecretResponse>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<AkriConnectorsSecretResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statefulSetConfigurationSettings': statefulSetConfigurationSettings,
      'trustSettings': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateTrustListResponse, Map<String, dynamic>>(trustSettings, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateRuntimeStatefulSetConfigurationResponse(
      additionalConfiguration: (() { final guardedValue = map['additionalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      allocation: (() { final guardedValue = map['allocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateBucketizedAllocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedConfigurationType: pulumi.Input.fromValue(map['managedConfigurationType'] as String),
      persistentVolumeClaimTemplates: (() { final guardedValue = map['persistentVolumeClaimTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      persistentVolumeClaims: (() { final guardedValue = map['persistentVolumeClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AkriConnectorTemplatePersistentVolumeClaimResponse>(guardedValue, (value) => AkriConnectorTemplatePersistentVolumeClaimResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AkriConnectorsSecretResponse>(guardedValue, (value) => AkriConnectorsSecretResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statefulSetConfigurationSettings: pulumi.Input.fromValue(map['statefulSetConfigurationSettings']),
      trustSettings: (() { final guardedValue = map['trustSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateTrustListResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
