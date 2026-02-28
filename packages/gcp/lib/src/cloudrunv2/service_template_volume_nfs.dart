// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateVolumeNfs {
  /// Path that is exported by the NFS server.
  final String path;

  /// If true, mount the NFS volume as read only
  final bool? readOnly;

  /// Hostname or IP address of the NFS server
  final String server;

  /// Creates a new [ServiceTemplateVolumeNfs].
  /// [path] Path that is exported by the NFS server.
  /// [readOnly] If true, mount the NFS volume as read only
  /// [server] Hostname or IP address of the NFS server
  ServiceTemplateVolumeNfs({
    required this.path,
    this.readOnly,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    map['server'] = server;
    return map;
  }

  factory ServiceTemplateVolumeNfs.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateVolumeNfs(
      path: map['path'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      server: map['server'] as String,
    );
  }
}
