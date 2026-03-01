// ignore_for_file: unused_element, unnecessary_cast

/// A Docker container.
class Container {
  /// Optional. Arguments passed to the entrypoint.
  final List<String>? args;

  /// Optional. If set, overrides the default ENTRYPOINT specified by the image.
  final List<String>? command;

  /// Optional. Environment variables passed to the container's entrypoint.
  final Map<String, String>? env;

  /// Optional. A Docker container image that defines a custom environment. Cloud Workstations provides a number of [preconfigured images](https://cloud.google.com/workstations/docs/preconfigured-base-images), but you can create your own [custom container images](https://cloud.google.com/workstations/docs/custom-container-images). If using a private image, the `host.gceInstance.serviceAccount` field must be specified in the workstation configuration. If using a custom container image, the service account must have [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles) permission to pull the specified image. Otherwise, the image must be publicly accessible.
  final String? image;

  /// Optional. If set, overrides the USER specified in the image with the given uid.
  final int? runAsUser;

  /// Optional. If set, overrides the default DIR specified by the image.
  final String? workingDir;

  /// Creates a new [Container].
  /// [args] Optional. Arguments passed to the entrypoint.
  /// [command] Optional. If set, overrides the default ENTRYPOINT specified by the image.
  /// [env] Optional. Environment variables passed to the container's entrypoint.
  /// [image] Optional. A Docker container image that defines a custom environment. Cloud Workstations provides a number of [preconfigured images](https://cloud.google.com/workstations/docs/preconfigured-base-images), but you can create your own [custom container images](https://cloud.google.com/workstations/docs/custom-container-images). If using a private image, the `host.gceInstance.serviceAccount` field must be specified in the workstation configuration. If using a custom container image, the service account must have [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles) permission to pull the specified image. Otherwise, the image must be publicly accessible.
  /// [runAsUser] Optional. If set, overrides the USER specified in the image with the given uid.
  /// [workingDir] Optional. If set, overrides the default DIR specified by the image.
  Container({
    this.args,
    this.command,
    this.env,
    this.image,
    this.runAsUser,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'env': ?env,
      'image': ?image,
      'runAsUser': ?runAsUser,
      'workingDir': ?workingDir,
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null
          ? null
          : (map['command'] as List).cast<String>(),
      env: map['env'] == null
          ? null
          : (map['env'] as Map).cast<String, String>(),
      image: map['image'] == null ? null : map['image'] as String,
      runAsUser: map['runAsUser'] == null ? null : map['runAsUser'] as int,
      workingDir: map['workingDir'] == null
          ? null
          : map['workingDir'] as String,
    );
  }
}
