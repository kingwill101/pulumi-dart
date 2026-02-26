// ignore_for_file: unused_element, unnecessary_cast

/// Container runnable.
class Container {
  /// If set to true, external network access to and from container will be blocked, containers that are with block_external_network as true can still communicate with each other, network cannot be specified in the `container.options` field.
  final bool? blockExternalNetwork;

  /// Overrides the `CMD` specified in the container. If there is an ENTRYPOINT (either in the container image or with the entrypoint field below) then commands are appended as arguments to the ENTRYPOINT.
  final List<String>? commands;

  /// Overrides the `ENTRYPOINT` specified in the container.
  final String? entrypoint;

  /// The URI to pull the container image from.
  final String? imageUri;

  /// Arbitrary additional options to include in the "docker run" command when running this container, e.g. "--network host".
  final String? options;

  /// Optional password for logging in to a docker registry. If password matches `projects/*/secrets/*/versions/*` then Batch will read the password from the Secret Manager;
  final String? password;

  /// Optional username for logging in to a docker registry. If username matches `projects/*/secrets/*/versions/*` then Batch will read the username from the Secret Manager.
  final String? username;

  /// Volumes to mount (bind mount) from the host machine files or directories into the container, formatted to match docker run's --volume option, e.g. /foo:/bar, or /foo:/bar:ro If the `TaskSpec.Volumes` field is specified but this field is not, Batch will mount each volume from the host machine to the container with the same mount path by default. In this case, the default mount option for containers will be read-only (ro) for existing persistent disks and read-write (rw) for other volume types, regardless of the original mount options specified in `TaskSpec.Volumes`. If you need different mount settings, you can explicitly configure them in this field.
  final List<String>? volumes;

  Container({
    this.blockExternalNetwork,
    this.commands,
    this.entrypoint,
    this.imageUri,
    this.options,
    this.password,
    this.username,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockExternalNetworkValue = blockExternalNetwork;
    if (blockExternalNetworkValue != null) {
      map['blockExternalNetwork'] = blockExternalNetworkValue;
    }
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = commandsValue;
    }
    final entrypointValue = entrypoint;
    if (entrypointValue != null) {
      map['entrypoint'] = entrypointValue;
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = volumesValue;
    }
    return map;
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      blockExternalNetwork: map['blockExternalNetwork'] == null
          ? null
          : map['blockExternalNetwork'] as bool,
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      entrypoint:
          map['entrypoint'] == null ? null : map['entrypoint'] as String,
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      options: map['options'] == null ? null : map['options'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
      volumes: map['volumes'] == null
          ? null
          : (map['volumes'] as List).cast<String>(),
    );
  }
}
