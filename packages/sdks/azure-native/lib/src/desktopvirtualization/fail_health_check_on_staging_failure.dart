/// Parameter indicating how the health check should behave if this package fails staging
enum FailHealthCheckOnStagingFailure {
  valueUnhealthy("Unhealthy"),
  valueNeedsAssistance("NeedsAssistance"),
  valueDoNotFail("DoNotFail");

  const FailHealthCheckOnStagingFailure(this.value);
  final String value;

  static FailHealthCheckOnStagingFailure fromValue(String value) {
    for (final item in FailHealthCheckOnStagingFailure.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailHealthCheckOnStagingFailure value: $value');
  }
}

