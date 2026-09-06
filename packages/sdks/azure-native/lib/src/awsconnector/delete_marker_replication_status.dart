import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether to replicate delete markers. Disabled by default.
enum DeleteMarkerReplicationStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const DeleteMarkerReplicationStatus(this.wireValue);
  @override
  final String wireValue;

  static DeleteMarkerReplicationStatus fromValue(String value) {
    for (final item in DeleteMarkerReplicationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteMarkerReplicationStatus value: $value');
  }
}
