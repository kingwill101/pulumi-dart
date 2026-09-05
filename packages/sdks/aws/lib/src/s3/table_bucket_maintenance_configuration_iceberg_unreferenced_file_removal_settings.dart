// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings {
  /// Data objects marked for deletion are deleted after this many days. Must be at least `1`.
  final pulumi.Input<int> nonCurrentDays;
  /// Unreferenced data objects are marked for deletion after this many days. Must be at least `1`.
  final pulumi.Input<int> unreferencedDays;

  /// Creates a new [TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings].
  /// [nonCurrentDays] Data objects marked for deletion are deleted after this many days. Must be at least `1`.
  /// [unreferencedDays] Unreferenced data objects are marked for deletion after this many days. Must be at least `1`.
  const TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings({
    required this.nonCurrentDays,
    required this.unreferencedDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonCurrentDays': nonCurrentDays,
      'unreferencedDays': unreferencedDays,
    };
  }

  factory TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings.fromMap(Map<String, dynamic> map) {
    return TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings(
      nonCurrentDays: pulumi.Input.fromValue((map['nonCurrentDays'] as num).toInt()),
      unreferencedDays: pulumi.Input.fromValue((map['unreferencedDays'] as num).toInt()),
    );
  }
}
