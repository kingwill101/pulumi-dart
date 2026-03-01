// ignore_for_file: unused_element, unnecessary_cast

import 'image_registry_credential.dart';

/// Custom container payload
class CustomContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  final List<String>? args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  final List<String>? command;
  /// Container image of the custom container. This should be in the form of <repository>:<tag> without the server name of the registry
  final String? containerImage;
  /// Credential of the image registry
  final ImageRegistryCredential? imageRegistryCredential;
  /// Language framework of the container image uploaded. Supported values: "springboot", "", null.
  final String? languageFramework;
  /// The name of the registry that contains the container image
  final String? server;

  /// Creates a new [CustomContainer].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  /// [command] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  /// [containerImage] Container image of the custom container. This should be in the form of <repository>:<tag> without the server name of the registry
  /// [imageRegistryCredential] Credential of the image registry
  /// [languageFramework] Language framework of the container image uploaded. Supported values: "springboot", "", null.
  /// [server] The name of the registry that contains the container image
  CustomContainer({
    this.args,
    this.command,
    this.containerImage,
    this.imageRegistryCredential,
    this.languageFramework,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'containerImage': ?containerImage,
      'imageRegistryCredential': ?imageRegistryCredential == null ? null : imageRegistryCredential!.toMap(),
      'languageFramework': ?languageFramework,
      'server': ?server,
    };
  }

  factory CustomContainer.fromMap(Map<String, dynamic> map) {
    return CustomContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      containerImage: map['containerImage'] == null ? null : map['containerImage'] as String,
      imageRegistryCredential: map['imageRegistryCredential'] == null ? null : ImageRegistryCredential.fromMap((map['imageRegistryCredential'] as Map).cast<String, dynamic>()),
      languageFramework: map['languageFramework'] == null ? null : map['languageFramework'] as String,
      server: map['server'] == null ? null : map['server'] as String,
    );
  }
}

