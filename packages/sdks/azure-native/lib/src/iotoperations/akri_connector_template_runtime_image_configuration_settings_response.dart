// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_container_registry_response.dart';
import 'akri_connectors_digest_response.dart';

/// AkriConnectorTemplateRuntimeImageConfiguration properties.
class AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse {
  /// The image name without any registry reference, tag or digest.
  final pulumi.Input<String> imageName;
  /// The pull policy of the image.
  final pulumi.Input<String>? imagePullPolicy;
  /// The registry settings for the image. You can omit this field if using the default docker hub repository or using a local image.
  final pulumi.Input<AkriConnectorsContainerRegistryResponse>? registrySettings;
  /// The number of replicas to be set up.
  final pulumi.Input<int>? replicas;
  /// Optional image tag or digest. If not specified, the default tag is `latest`.
  final pulumi.Input<AkriConnectorsDigestResponse>? tagDigestSettings;

  /// Creates a new [AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse].
  /// [imageName] The image name without any registry reference, tag or digest.
  /// [imagePullPolicy] The pull policy of the image.
  /// [registrySettings] The registry settings for the image. You can omit this field if using the default docker hub repository or using a local image.
  /// [replicas] The number of replicas to be set up.
  /// [tagDigestSettings] Optional image tag or digest. If not specified, the default tag is `latest`.
  AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse({
    required this.imageName,
    this.imagePullPolicy,
    this.registrySettings,
    this.replicas,
    this.tagDigestSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'imagePullPolicy': ?imagePullPolicy,
      'registrySettings': ?pulumi.Input.mapOptionalInputValue<AkriConnectorsContainerRegistryResponse, Map<String, dynamic>>(registrySettings, (value) => value.toMap()),
      'replicas': ?replicas,
      'tagDigestSettings': ?pulumi.Input.mapOptionalInputValue<AkriConnectorsDigestResponse, Map<String, dynamic>>(tagDigestSettings, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateRuntimeImageConfigurationSettingsResponse(
      imageName: (map['imageName'] as String).input(),
      imagePullPolicy: map['imagePullPolicy'] == null ? null : (map['imagePullPolicy'] as String).input(),
      registrySettings: map['registrySettings'] == null ? null : (AkriConnectorsContainerRegistryResponse.fromMap((map['registrySettings'] as Map).cast<String, dynamic>())).input(),
      replicas: map['replicas'] == null ? null : (map['replicas'] as int).input(),
      tagDigestSettings: map['tagDigestSettings'] == null ? null : (AkriConnectorsDigestResponse.fromMap((map['tagDigestSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

