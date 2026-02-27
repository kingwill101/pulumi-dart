// ignore_for_file: unused_element, unnecessary_cast

/// A Google Compute Engine disk resource specification.
class DiskResponseGenomicsV1alpha2 {
  /// Deprecated. Disks created by the Pipelines API will be deleted at the end of the pipeline run, regardless of what this field is set to.
  final bool autoDelete;

  /// Required at create time and cannot be overridden at run time. Specifies the path in the docker container where files on this disk should be located. For example, if `mountPoint` is `/mnt/disk`, and the parameter has `localPath` `inputs/file.txt`, the docker container can access the data at `/mnt/disk/inputs/file.txt`.
  final String mountPoint;

  /// The name of the disk that can be used in the pipeline parameters. Must be 1 - 63 characters. The name "boot" is reserved for system use.
  final String name;

  /// Specifies how a sourced-base persistent disk will be mounted. See https://cloud.google.com/compute/docs/disks/persistent-disks#use_multi_instances for more details. Can only be set at create time.
  final bool readOnly;

  /// The size of the disk. Defaults to 500 (GB). This field is not applicable for local SSD.
  final int sizeGb;

  /// The full or partial URL of the persistent disk to attach. See https://cloud.google.com/compute/docs/reference/latest/instances#resource and https://cloud.google.com/compute/docs/disks/persistent-disks#snapshots for more details.
  final String source;

  /// The type of the disk to create.
  final String type;

  DiskResponseGenomicsV1alpha2({
    required this.autoDelete,
    required this.mountPoint,
    required this.name,
    required this.readOnly,
    required this.sizeGb,
    required this.source,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDelete'] = autoDelete;
    map['mountPoint'] = mountPoint;
    map['name'] = name;
    map['readOnly'] = readOnly;
    map['sizeGb'] = sizeGb;
    map['source'] = source;
    map['type'] = type;
    return map;
  }

  factory DiskResponseGenomicsV1alpha2.fromMap(Map<String, dynamic> map) {
    return DiskResponseGenomicsV1alpha2(
      autoDelete: map['autoDelete'] as bool,
      mountPoint: map['mountPoint'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] as bool,
      sizeGb: map['sizeGb'] as int,
      source: map['source'] as String,
      type: map['type'] as String,
    );
  }
}
