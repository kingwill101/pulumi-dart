/// Property value
enum ClusterStateChangeReasonCode {
  aLLSTEPSCOMPLETED("ALL_STEPS_COMPLETED"),
  bOOTSTRAPFAILURE("BOOTSTRAP_FAILURE"),
  iNSTANCEFAILURE("INSTANCE_FAILURE"),
  iNSTANCEFLEETTIMEOUT("INSTANCE_FLEET_TIMEOUT"),
  iNTERNALERROR("INTERNAL_ERROR"),
  sTEPFAILURE("STEP_FAILURE"),
  uSERREQUEST("USER_REQUEST"),
  vALIDATIONERROR("VALIDATION_ERROR");

  const ClusterStateChangeReasonCode(this.value);
  final String value;

  static ClusterStateChangeReasonCode fromValue(String value) {
    for (final item in ClusterStateChangeReasonCode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterStateChangeReasonCode value: $value');
  }
}

