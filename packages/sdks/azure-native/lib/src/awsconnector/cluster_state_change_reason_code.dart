import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ClusterStateChangeReasonCode implements pulumi.PulumiEnum<String> {
  aLLSTEPSCOMPLETED("ALL_STEPS_COMPLETED"),
  bOOTSTRAPFAILURE("BOOTSTRAP_FAILURE"),
  iNSTANCEFAILURE("INSTANCE_FAILURE"),
  iNSTANCEFLEETTIMEOUT("INSTANCE_FLEET_TIMEOUT"),
  iNTERNALERROR("INTERNAL_ERROR"),
  sTEPFAILURE("STEP_FAILURE"),
  uSERREQUEST("USER_REQUEST"),
  vALIDATIONERROR("VALIDATION_ERROR");

  const ClusterStateChangeReasonCode(this.wireValue);
  @override
  final String wireValue;

  static ClusterStateChangeReasonCode fromValue(String value) {
    for (final item in ClusterStateChangeReasonCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterStateChangeReasonCode value: $value');
  }
}
