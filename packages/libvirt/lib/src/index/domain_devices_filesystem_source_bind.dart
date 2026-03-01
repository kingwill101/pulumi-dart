// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemSourceBind {
  /// Sets the directory from which the filesystem is bound.
  final String dir;

  /// Creates a new [DomainDevicesFilesystemSourceBind].
  /// [dir] Sets the directory from which the filesystem is bound.
  DomainDevicesFilesystemSourceBind({
    required this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': dir,
    };
  }

  factory DomainDevicesFilesystemSourceBind.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceBind(
      dir: map['dir'] as String,
    );
  }
}

