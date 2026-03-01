// ignore_for_file: unused_element, unnecessary_cast


class RegistryTaskDockerStep {
  /// Specifies a map of arguments to be used when executing this step.
  final Map<String, String>? arguments;
  /// Should the image cache be enabled? Defaults to `true`.
  final bool? cacheEnabled;
  /// The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  final String contextAccessToken;
  /// The URL (absolute or relative) of the source context for this step. If the context is an url you can reference a specific branch or folder via `#branch:folder`.
  final String contextPath;
  /// The Dockerfile path relative to the source context.
  final String dockerfilePath;
  /// Specifies a list of fully qualified image names including the repository and tag.
  final List<String>? imageNames;
  /// Should the image built be pushed to the registry or not? Defaults to `true`.
  final bool? pushEnabled;
  /// Specifies a map of *secret* arguments to be used when executing this step.
  final Map<String, String>? secretArguments;
  /// The name of the target build stage for the docker build.
  final String? target;

  /// Creates a new [RegistryTaskDockerStep].
  /// [arguments] Specifies a map of arguments to be used when executing this step.
  /// [cacheEnabled] Should the image cache be enabled? Defaults to `true`.
  /// [contextAccessToken] The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  /// [contextPath] The URL (absolute or relative) of the source context for this step. If the context is an url you can reference a specific branch or folder via `#branch:folder`.
  /// [dockerfilePath] The Dockerfile path relative to the source context.
  /// [imageNames] Specifies a list of fully qualified image names including the repository and tag.
  /// [pushEnabled] Should the image built be pushed to the registry or not? Defaults to `true`.
  /// [secretArguments] Specifies a map of *secret* arguments to be used when executing this step.
  /// [target] The name of the target build stage for the docker build.
  RegistryTaskDockerStep({
    this.arguments,
    this.cacheEnabled,
    required this.contextAccessToken,
    required this.contextPath,
    required this.dockerfilePath,
    this.imageNames,
    this.pushEnabled,
    this.secretArguments,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'cacheEnabled': ?cacheEnabled,
      'contextAccessToken': contextAccessToken,
      'contextPath': contextPath,
      'dockerfilePath': dockerfilePath,
      'imageNames': ?imageNames,
      'pushEnabled': ?pushEnabled,
      'secretArguments': ?secretArguments,
      'target': ?target,
    };
  }

  factory RegistryTaskDockerStep.fromMap(Map<String, dynamic> map) {
    return RegistryTaskDockerStep(
      arguments: map['arguments'] == null ? null : (map['arguments'] as Map).cast<String, String>(),
      cacheEnabled: map['cacheEnabled'] == null ? null : map['cacheEnabled'] as bool,
      contextAccessToken: map['contextAccessToken'] as String,
      contextPath: map['contextPath'] as String,
      dockerfilePath: map['dockerfilePath'] as String,
      imageNames: map['imageNames'] == null ? null : (map['imageNames'] as List).cast<String>(),
      pushEnabled: map['pushEnabled'] == null ? null : map['pushEnabled'] as bool,
      secretArguments: map['secretArguments'] == null ? null : (map['secretArguments'] as Map).cast<String, String>(),
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

