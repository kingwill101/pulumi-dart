// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateDataPersistentDiskSpec {
  /// The disk size of the runtime in GB. If specified, the diskType must also be specified. The minimum size is 10GB and the maximum is 65536GB.
  final String? diskSizeGb;

  /// The type of the persistent disk.
  final String? diskType;

  /// Creates a new [RuntimeTemplateDataPersistentDiskSpec].
  /// [diskSizeGb] The disk size of the runtime in GB. If specified, the diskType must also be specified. The minimum size is 10GB and the maximum is 65536GB.
  /// [diskType] The type of the persistent disk.
  RuntimeTemplateDataPersistentDiskSpec({this.diskSizeGb, this.diskType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'diskSizeGb': ?diskSizeGb, 'diskType': ?diskType};
  }

  factory RuntimeTemplateDataPersistentDiskSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuntimeTemplateDataPersistentDiskSpec(
      diskSizeGb: map['diskSizeGb'] == null
          ? null
          : map['diskSizeGb'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
    );
  }
}
