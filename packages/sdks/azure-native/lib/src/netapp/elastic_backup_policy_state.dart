/// The property to identify whether Backup Policy is enabled or not
enum ElasticBackupPolicyState {
  enabled("Enabled"),
  disabled("Disabled");

  const ElasticBackupPolicyState(this.value);
  final String value;

  static ElasticBackupPolicyState fromValue(String value) {
    for (final item in ElasticBackupPolicyState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticBackupPolicyState value: $value');
  }
}

