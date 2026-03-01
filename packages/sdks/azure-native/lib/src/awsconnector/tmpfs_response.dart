// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Tmpfs
class TmpfsResponse {
  /// The absolute file path where the tmpfs volume is to be mounted.
  final String? containerPath;
  /// The list of tmpfs volume mount options.
  final List<String>? mountOptions;
  /// The maximum size (in MiB) of the tmpfs volume.
  final int? size;

  /// Creates a new [TmpfsResponse].
  /// [containerPath] The absolute file path where the tmpfs volume is to be mounted.
  /// [mountOptions] The list of tmpfs volume mount options.
  /// [size] The maximum size (in MiB) of the tmpfs volume.
  TmpfsResponse({
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

  factory TmpfsResponse.fromMap(Map<String, dynamic> map) {
    return TmpfsResponse(
      containerPath: map['containerPath'] == null ? null : map['containerPath'] as String,
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as List).cast<String>(),
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

