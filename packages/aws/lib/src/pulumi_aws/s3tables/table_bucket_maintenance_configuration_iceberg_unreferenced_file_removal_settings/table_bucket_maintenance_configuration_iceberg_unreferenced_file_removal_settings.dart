// ignore_for_file: unused_element, unnecessary_cast

class TableBucketMaintenanceConfigurationIcebergUnreferencedFileRemovalSettings {
  /// Data objects marked for deletion are deleted after this many days.
  /// Must be at least <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int nonCurrentDays;

  /// Unreferenced data objects are marked for deletion after this many days.
  /// Must be at least <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int unreferencedDays;

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
