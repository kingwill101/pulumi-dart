/// Canonical code of the condition.
enum StatusConditionCanonicalCode2 {
  ok("OK"),
  cancelled("CANCELLED"),
  unknown("UNKNOWN"),
  invalidArgument("INVALID_ARGUMENT"),
  deadlineExceeded("DEADLINE_EXCEEDED"),
  notFound("NOT_FOUND"),
  alreadyExists("ALREADY_EXISTS"),
  permissionDenied("PERMISSION_DENIED"),
  unauthenticated("UNAUTHENTICATED"),
  resourceExhausted("RESOURCE_EXHAUSTED"),
  failedPrecondition("FAILED_PRECONDITION"),
  aborted("ABORTED"),
  outOfRange("OUT_OF_RANGE"),
  unimplemented("UNIMPLEMENTED"),
  internal("INTERNAL"),
  unavailable("UNAVAILABLE"),
  dataLoss("DATA_LOSS");

  const StatusConditionCanonicalCode2(this.value);
  final String value;

  static StatusConditionCanonicalCode2 fromValue(String value) {
    for (final item in StatusConditionCanonicalCode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusConditionCanonicalCode2 value: $value');
  }
}
