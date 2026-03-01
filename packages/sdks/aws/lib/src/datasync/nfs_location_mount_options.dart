// ignore_for_file: unused_element, unnecessary_cast


class NfsLocationMountOptions {
  /// The specific NFS version that you want DataSync to use for mounting your NFS share. Valid values: `AUTOMATIC`, `NFS3`, `NFS4_0` and `NFS4_1`. Default: `AUTOMATIC`
  final String? version;

  /// Creates a new [NfsLocationMountOptions].
  /// [version] The specific NFS version that you want DataSync to use for mounting your NFS share. Valid values: `AUTOMATIC`, `NFS3`, `NFS4_0` and `NFS4_1`. Default: `AUTOMATIC`
  NfsLocationMountOptions({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory NfsLocationMountOptions.fromMap(Map<String, dynamic> map) {
    return NfsLocationMountOptions(
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

