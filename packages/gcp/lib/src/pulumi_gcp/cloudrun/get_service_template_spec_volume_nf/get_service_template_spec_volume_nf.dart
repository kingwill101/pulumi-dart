// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateSpecVolumeNf {
  /// Path exported by the NFS server
  final String path;

  /// If true, mount the NFS volume as read only in all mounts. Defaults to false.
  final bool readOnly;

  /// IP address or hostname of the NFS server
  final String server;

  GetServiceTemplateSpecVolumeNf({
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

  factory GetServiceTemplateSpecVolumeNf.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecVolumeNf(
      path: map['path'] as String,
      readOnly: map['readOnly'] as bool,
      server: map['server'] as String,
    );
  }
}
