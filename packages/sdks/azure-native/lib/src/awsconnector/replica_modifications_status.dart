/// Specifies whether Amazon S3 replicates modifications on replicas.  *Allowed values*: ``Enabled`` | ``Disabled``
enum ReplicaModificationsStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const ReplicaModificationsStatus(this.wireValue);
  final String wireValue;

  static ReplicaModificationsStatus fromValue(String value) {
    for (final item in ReplicaModificationsStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicaModificationsStatus value: $value');
  }
}
