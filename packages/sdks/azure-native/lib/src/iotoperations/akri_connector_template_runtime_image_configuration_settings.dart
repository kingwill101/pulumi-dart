// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateRuntimeImageConfiguration properties.
class AkriConnectorTemplateRuntimeImageConfigurationSettings {
  /// The image name without any registry reference, tag or digest.
  final pulumi.Input<String> imageName;
  /// The pull policy of the image.
  final pulumi.Input<dynamic>? imagePullPolicy;
  /// The registry settings for the image. You can omit this field if using the default docker hub repository or using a local image.
  final pulumi.Input<dynamic>? registrySettings;
  /// The number of replicas to be set up.
  final pulumi.Input<int?>? replicas;
  /// Optional image tag or digest. If not specified, the default tag is `latest`.
  final pulumi.Input<dynamic>? tagDigestSettings;

  /// Creates a new [AkriConnectorTemplateRuntimeImageConfigurationSettings].
  /// [imageName] The image name without any registry reference, tag or digest.
  /// [imagePullPolicy] The pull policy of the image.
  /// [registrySettings] The registry settings for the image. You can omit this field if using the default docker hub repository or using a local image.
  /// [replicas] The number of replicas to be set up.
  /// [tagDigestSettings] Optional image tag or digest. If not specified, the default tag is `latest`.
  const AkriConnectorTemplateRuntimeImageConfigurationSettings({
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
      'registrySettings': ?registrySettings,
      'replicas': ?replicas,
      'tagDigestSettings': ?tagDigestSettings,
    };
  }

  factory AkriConnectorTemplateRuntimeImageConfigurationSettings.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateRuntimeImageConfigurationSettings(
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      imagePullPolicy: (() { final guardedValue = map['imagePullPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      registrySettings: (() { final guardedValue = map['registrySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tagDigestSettings: (() { final guardedValue = map['tagDigestSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
