import 'package:pulumi/pulumi.dart' as pulumi;

/// The property to identify whether Backup Policy is enabled or not
enum ElasticBackupPolicyState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const ElasticBackupPolicyState(this.wireValue);
  @override
  final String wireValue;

  static ElasticBackupPolicyState fromValue(String value) {
    for (final item in ElasticBackupPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticBackupPolicyState value: $value');
  }
}
