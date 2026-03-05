// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_registry_credential.dart';

/// Custom container payload
class CustomContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  final pulumi.Input<List<String>>? args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  final pulumi.Input<List<String>>? command;
  /// Container image of the custom container. This should be in the form of &lt;repository&gt;:&lt;tag&gt; without the server name of the registry
  final pulumi.Input<String>? containerImage;
  /// Credential of the image registry
  final pulumi.Input<ImageRegistryCredential>? imageRegistryCredential;
  /// Language framework of the container image uploaded. Supported values: "springboot", "", null.
  final pulumi.Input<String>? languageFramework;
  /// The name of the registry that contains the container image
  final pulumi.Input<String>? server;

  /// Creates a new [CustomContainer].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  /// [command] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  /// [containerImage] Container image of the custom container. This should be in the form of &lt;repository&gt;:&lt;tag&gt; without the server name of the registry
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
      'imageRegistryCredential': ?pulumi.Input.mapOptionalInputValue<ImageRegistryCredential, Map<String, dynamic>>(imageRegistryCredential, (value) => value.toMap()),
      'languageFramework': ?languageFramework,
      'server': ?server,
    };
  }

  factory CustomContainer.fromMap(Map<String, dynamic> map) {
    return CustomContainer(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageRegistryCredential: (() { final guardedValue = map['imageRegistryCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageRegistryCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageFramework: (() { final guardedValue = map['languageFramework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

