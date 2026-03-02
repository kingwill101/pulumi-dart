// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration settings for Docker build context
class BuildContext {
  /// [Required] URI of the Docker build context used to build the image. Supports blob URIs on environment creation and may return blob or Git URIs.
  /// <seealso href="https://docs.docker.com/engine/reference/commandline/build/#extended-description" />
  final pulumi.Input<String> contextUri;
  /// Path to the Dockerfile in the build context.
  /// <seealso href="https://docs.docker.com/engine/reference/builder/" />
  final pulumi.Input<String>? dockerfilePath;

  /// Creates a new [BuildContext].
  /// [contextUri] [Required] URI of the Docker build context used to build the image. Supports blob URIs on environment creation and may return blob or Git URIs.
  /// [dockerfilePath] Path to the Dockerfile in the build context.
  BuildContext({
    required this.contextUri,
    this.dockerfilePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextUri': contextUri,
      'dockerfilePath': ?dockerfilePath,
    };
  }

  factory BuildContext.fromMap(Map<String, dynamic> map) {
    return BuildContext(
      contextUri: (map['contextUri'] as String).input(),
      dockerfilePath: map['dockerfilePath'] == null ? null : (map['dockerfilePath'] as String).input(),
    );
  }
}

