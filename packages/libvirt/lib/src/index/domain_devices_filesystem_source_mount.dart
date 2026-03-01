// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemSourceMount {
  /// Sets the directory used as the mount point for the filesystem source.
  final String? dir;
  /// Indicates if the mount point is a socket.
  final String? socket;

  /// Creates a new [DomainDevicesFilesystemSourceMount].
  /// [dir] Sets the directory used as the mount point for the filesystem source.
  /// [socket] Indicates if the mount point is a socket.
  DomainDevicesFilesystemSourceMount({
    this.dir,
    this.socket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
      'socket': ?socket,
    };
  }

  factory DomainDevicesFilesystemSourceMount.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceMount(
      dir: map['dir'] == null ? null : map['dir'] as String,
      socket: map['socket'] == null ? null : map['socket'] as String,
    );
  }
}

