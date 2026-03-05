// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Docker image details
class ContainerImageResponse {
  /// Image pull policy.
  final pulumi.Input<String>? pullPolicy;
  /// Image pull secrets.
  final pulumi.Input<String>? pullSecrets;
  /// The Docker image name.
  final pulumi.Input<String> repository;
  /// The Docker  image tag.
  final pulumi.Input<String> tag;

  /// Creates a new [ContainerImageResponse].
  /// [pullPolicy] Image pull policy.
  /// [pullSecrets] Image pull secrets.
  /// [repository] The Docker image name.
  /// [tag] The Docker  image tag.
  ContainerImageResponse({
    this.pullPolicy,
    this.pullSecrets,
    required this.repository,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullPolicy': ?pullPolicy,
      'pullSecrets': ?pullSecrets,
      'repository': repository,
      'tag': tag,
    };
  }

  factory ContainerImageResponse.fromMap(Map<String, dynamic> map) {
    return ContainerImageResponse(
      pullPolicy: (() { final guardedValue = map['pullPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullSecrets: (() { final guardedValue = map['pullSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: pulumi.Input.fromValue(map['repository'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}

