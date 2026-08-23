/// Parameter indicating how the health check should behave if this package fails staging
enum FailHealthCheckOnStagingFailure {
  valueUnhealthy("Unhealthy"),
  valueNeedsAssistance("NeedsAssistance"),
  valueDoNotFail("DoNotFail");

  const FailHealthCheckOnStagingFailure(this.wireValue);
  final String wireValue;

  static FailHealthCheckOnStagingFailure fromValue(String value) {
    for (final item in FailHealthCheckOnStagingFailure.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailHealthCheckOnStagingFailure value: $value');
  }
}
