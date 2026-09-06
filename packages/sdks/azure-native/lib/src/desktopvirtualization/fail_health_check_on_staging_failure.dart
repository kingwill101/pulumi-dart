import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameter indicating how the health check should behave if this package fails staging
enum FailHealthCheckOnStagingFailure implements pulumi.PulumiEnum<String> {
  valueUnhealthy("Unhealthy"),
  valueNeedsAssistance("NeedsAssistance"),
  valueDoNotFail("DoNotFail");

  const FailHealthCheckOnStagingFailure(this.wireValue);
  @override
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
