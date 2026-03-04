/// Property value
enum TargetHealthReasonEnum {
  elbInitialHealthChecking("Elb.InitialHealthChecking"),
  elbInternalError("Elb.InternalError"),
  elbRegistrationInProgress("Elb.RegistrationInProgress"),
  targetDeregistrationInProgress("Target.DeregistrationInProgress"),
  targetFailedHealthChecks("Target.FailedHealthChecks"),
  targetHealthCheckDisabled("Target.HealthCheckDisabled"),
  targetInvalidState("Target.InvalidState"),
  targetIpUnusable("Target.IpUnusable"),
  targetNotInUse("Target.NotInUse"),
  targetNotRegistered("Target.NotRegistered"),
  targetResponseCodeMismatch("Target.ResponseCodeMismatch"),
  targetTimeout("Target.Timeout");

  const TargetHealthReasonEnum(this.wireValue);
  final String wireValue;

  static TargetHealthReasonEnum fromValue(String value) {
    for (final item in TargetHealthReasonEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetHealthReasonEnum value: $value');
  }
}
