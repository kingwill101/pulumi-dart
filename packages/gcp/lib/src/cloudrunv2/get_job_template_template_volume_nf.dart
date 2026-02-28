// ignore_for_file: unused_element, unnecessary_cast

class GetJobTemplateTemplateVolumeNf {
  /// Path that is exported by the NFS server.
  final String path;

  /// If true, mount this volume as read-only in all mounts.
  final bool readOnly;

  /// Hostname or IP address of the NFS server.
  final String server;

  /// Creates a new [GetJobTemplateTemplateVolumeNf].
  /// [path] Path that is exported by the NFS server.
  /// [readOnly] If true, mount this volume as read-only in all mounts.
  /// [server] Hostname or IP address of the NFS server.
  GetJobTemplateTemplateVolumeNf({
    required this.path,
    required this.readOnly,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['readOnly'] = readOnly;
    map['server'] = server;
    return map;
  }

  factory GetJobTemplateTemplateVolumeNf.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateVolumeNf(
      path: map['path'] as String,
      readOnly: map['readOnly'] as bool,
      server: map['server'] as String,
    );
  }
}
