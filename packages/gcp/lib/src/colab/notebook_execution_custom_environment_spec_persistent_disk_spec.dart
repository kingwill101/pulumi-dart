// ignore_for_file: unused_element, unnecessary_cast

class NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec {
  /// The disk size of the runtime in GB. If specified, the diskType must also be specified. The minimum size is 10GB and the maximum is 65536GB.
  final String? diskSizeGb;

  /// The type of the persistent disk.
  final String? diskType;

  /// Creates a new [NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec].
  /// [diskSizeGb] The disk size of the runtime in GB. If specified, the diskType must also be specified. The minimum size is 10GB and the maximum is 65536GB.
  /// [diskType] The type of the persistent disk.
  NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec({
    this.diskSizeGb,
    this.diskType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    return map;
  }

  factory NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec.fromMap(
      Map<String, dynamic> map) {
    return NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec(
      diskSizeGb:
          map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
    );
  }
}
