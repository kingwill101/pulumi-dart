// ignore_for_file: unused_element, unnecessary_cast

class TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings {
  /// Data objects marked for deletion are deleted after this many days.
  /// Must be at least `1`.
  final int nonCurrentDays;

  /// Unreferenced data objects are marked for deletion after this many days.
  /// Must be at least `1`.
  final int unreferencedDays;

  /// Creates a new [TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings].
  /// [nonCurrentDays] Data objects marked for deletion are deleted after this many days.
  /// [unreferencedDays] Unreferenced data objects are marked for deletion after this many days.
  TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings({
    required this.nonCurrentDays,
    required this.unreferencedDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nonCurrentDays'] = nonCurrentDays;
    map['unreferencedDays'] = unreferencedDays;
    return map;
  }

  factory TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings.fromMap(
      Map<String, dynamic> map) {
    return TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings(
      nonCurrentDays: map['nonCurrentDays'] as int,
      unreferencedDays: map['unreferencedDays'] as int,
    );
  }
}
