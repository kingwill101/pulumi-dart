// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Tmpfs
class Tmpfs {
  /// The absolute file path where the tmpfs volume is to be mounted.
  final pulumi.Input<String>? containerPath;
  /// The list of tmpfs volume mount options.
  final pulumi.Input<List<String>>? mountOptions;
  /// The maximum size (in MiB) of the tmpfs volume.
  final pulumi.Input<int>? size;

  /// Creates a new [Tmpfs].
  /// [containerPath] The absolute file path where the tmpfs volume is to be mounted.
  /// [mountOptions] The list of tmpfs volume mount options.
  /// [size] The maximum size (in MiB) of the tmpfs volume.
  Tmpfs({
    this.containerPath,
    this.mountOptions,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'mountOptions': ?mountOptions,
      'size': ?size,
    };
  }

  factory Tmpfs.fromMap(Map<String, dynamic> map) {
    return Tmpfs(
      containerPath: map['containerPath'] == null ? null : (map['containerPath'] as String).input(),
      mountOptions: map['mountOptions'] == null ? null : ((map['mountOptions'] as List).cast<String>()).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
    );
  }
}

