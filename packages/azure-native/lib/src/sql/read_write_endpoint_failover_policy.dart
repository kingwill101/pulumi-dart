/// Failover policy of the read-write endpoint for the failover group. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
enum ReadWriteEndpointFailoverPolicy {
  valueManual("Manual"),
  valueAutomatic("Automatic");

  const ReadWriteEndpointFailoverPolicy(this.value);
  final String value;

  static ReadWriteEndpointFailoverPolicy fromValue(String value) {
    for (final item in ReadWriteEndpointFailoverPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadWriteEndpointFailoverPolicy value: $value');
  }
}

