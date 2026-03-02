// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_container_registry.dart';
import 'akri_connectors_digest.dart';

/// AkriConnectorTemplateRuntimeImageConfiguration properties.
class AkriConnectorTemplateRuntimeImageConfigurationSettings {
  /// The image name without any registry reference, tag or digest.
  final pulumi.Input<String> imageName;
  /// The pull policy of the image.
  final pulumi.Input<String>? imagePullPolicy;
  /// The registry settings for the image. You can omit this field if using the default docker hub repository or using a local image.
  final pulumi.Input<AkriConnectorsContainerRegistry>? registrySettings;
  /// The number of replicas to be set up.
  final pulumi.Input<int>? replicas;
  /// Optional image tag or digest. If not specified, the default tag is `latest`.
  final pulumi.Input<AkriConnectorsDigest>? tagDigestSettings;

  /// Creates a new [AkriConnectorTemplateRuntimeImageConfigurationSettings].
  /// [imageName] The image name without any registry reference, tag or digest.
  /// [imagePullPolicy] The pull policy of the image.
  /// [registrySettings] The registry settings for the image. You can omit this field if using the default docker hub repository or using a local image.
  /// [replicas] The number of replicas to be set up.
  /// [tagDigestSettings] Optional image tag or digest. If not specified, the default tag is `latest`.
  AkriConnectorTemplateRuntimeImageConfigurationSettings({
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
      'registrySettings': ?pulumi.Input.mapOptionalInputValue<AkriConnectorsContainerRegistry, Map<String, dynamic>>(registrySettings, (value) => value.toMap()),
      'replicas': ?replicas,
      'tagDigestSettings': ?pulumi.Input.mapOptionalInputValue<AkriConnectorsDigest, Map<String, dynamic>>(tagDigestSettings, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplateRuntimeImageConfigurationSettings.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateRuntimeImageConfigurationSettings(
      imageName: (map['imageName'] as String).input(),
      imagePullPolicy: map['imagePullPolicy'] == null ? null : (map['imagePullPolicy']! as String).input(),
      registrySettings: map['registrySettings'] == null ? null : (AkriConnectorsContainerRegistry.fromMap((map['registrySettings']! as Map).cast<String, dynamic>())).input(),
      replicas: map['replicas'] == null ? null : (map['replicas']! as int).input(),
      tagDigestSettings: map['tagDigestSettings'] == null ? null : (AkriConnectorsDigest.fromMap((map['tagDigestSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

