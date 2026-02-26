// ignore_for_file: unused_element, unnecessary_cast

class TableMaintenanceConfigurationIcebergCompactionSettings {
  /// Data objects smaller than this size may be combined with others to improve query performance.
  /// Must be between <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span> and <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>.
  final int targetFileSizeMb;

  TableMaintenanceConfigurationIcebergCompactionSettings({
    required this.targetFileSizeMb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetFileSizeMb'] = targetFileSizeMb;
    return map;
  }

  factory TableMaintenanceConfigurationIcebergCompactionSettings.fromMap(
      Map<String, dynamic> map) {
    return TableMaintenanceConfigurationIcebergCompactionSettings(
      targetFileSizeMb: map['targetFileSizeMb'] as int,
    );
  }
}
