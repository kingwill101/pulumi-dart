// ignore_for_file: unused_element, unnecessary_cast


class ContainerVolume {
  /// The path in the container where the volume will be mounted.
  final String? containerPath;
  /// The container where the volume is coming from.
  final String? fromContainer;
  /// The path on the host where the volume is coming from.
  final String? hostPath;
  /// If `true`, this volume will be readonly. Defaults to `false`.
  final bool? readOnly;
  /// The name of the docker volume which should be mounted.
  final String? volumeName;

  /// Creates a new [ContainerVolume].
  /// [containerPath] The path in the container where the volume will be mounted.
  /// [fromContainer] The container where the volume is coming from.
  /// [hostPath] The path on the host where the volume is coming from.
  /// [readOnly] If `true`, this volume will be readonly. Defaults to `false`.
  /// [volumeName] The name of the docker volume which should be mounted.
  ContainerVolume({
    this.containerPath,
    this.fromContainer,
    this.hostPath,
    this.readOnly,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'fromContainer': ?fromContainer,
      'hostPath': ?hostPath,
      'readOnly': ?readOnly,
      'volumeName': ?volumeName,
    };
  }

  factory ContainerVolume.fromMap(Map<String, dynamic> map) {
    return ContainerVolume(
      containerPath: map['containerPath'] == null ? null : map['containerPath'] as String,
      fromContainer: map['fromContainer'] == null ? null : map['fromContainer'] as String,
      hostPath: map['hostPath'] == null ? null : map['hostPath'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
    );
  }
}

