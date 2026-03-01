// ignore_for_file: unused_element, unnecessary_cast


class WorkstationConfigContainer {
  /// Arguments passed to the entrypoint.
  final List<String>? args;
  /// If set, overrides the default ENTRYPOINT specified by the image.
  final List<String>? commands;
  /// Environment variables passed to the container.
  /// The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  final Map<String, String>? env;
  /// Docker image defining the container. This image must be accessible by the config's service account.
  final String? image;
  /// If set, overrides the USER specified in the image with the given uid.
  final int? runAsUser;
  /// If set, overrides the default DIR specified by the image.
  final String? workingDir;

  /// Creates a new [WorkstationConfigContainer].
  /// [args] Arguments passed to the entrypoint.
  /// [commands] If set, overrides the default ENTRYPOINT specified by the image.
  /// [env] Environment variables passed to the container.
  /// [image] Docker image defining the container. This image must be accessible by the config's service account.
  /// [runAsUser] If set, overrides the USER specified in the image with the given uid.
  /// [workingDir] If set, overrides the default DIR specified by the image.
  WorkstationConfigContainer({
    this.args,
    this.commands,
    this.env,
    this.image,
    this.runAsUser,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'env': ?env,
      'image': ?image,
      'runAsUser': ?runAsUser,
      'workingDir': ?workingDir,
    };
  }

  factory WorkstationConfigContainer.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      env: map['env'] == null ? null : (map['env'] as Map).cast<String, String>(),
      image: map['image'] == null ? null : map['image'] as String,
      runAsUser: map['runAsUser'] == null ? null : map['runAsUser'] as int,
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

