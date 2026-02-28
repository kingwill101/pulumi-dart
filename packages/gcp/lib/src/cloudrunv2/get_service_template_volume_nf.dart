// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateVolumeNf {
  /// Path that is exported by the NFS server.
  final String path;

  /// If true, mount the NFS volume as read only
  final bool readOnly;

  /// Hostname or IP address of the NFS server
  final String server;

  /// Creates a new [GetServiceTemplateVolumeNf].
  /// [path] Path that is exported by the NFS server.
  /// [readOnly] If true, mount the NFS volume as read only
  /// [server] Hostname or IP address of the NFS server
  GetServiceTemplateVolumeNf({
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

  factory GetServiceTemplateVolumeNf.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolumeNf(
      path: map['path'] as String,
      readOnly: map['readOnly'] as bool,
      server: map['server'] as String,
    );
  }
}
