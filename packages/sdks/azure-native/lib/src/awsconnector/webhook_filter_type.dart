/// Property value
enum WebhookFilterType {
  aCTORACCOUNTID("ACTOR_ACCOUNT_ID"),
  bASEREF("BASE_REF"),
  cOMMITMESSAGE("COMMIT_MESSAGE"),
  eVENT("EVENT"),
  fILEPATH("FILE_PATH"),
  hEADREF("HEAD_REF"),
  rELEASENAME("RELEASE_NAME"),
  tAGNAME("TAG_NAME"),
  wORKFLOWNAME("WORKFLOW_NAME");

  const WebhookFilterType(this.wireValue);
  final String wireValue;

  static WebhookFilterType fromValue(String value) {
    for (final item in WebhookFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookFilterType value: $value');
  }
}
