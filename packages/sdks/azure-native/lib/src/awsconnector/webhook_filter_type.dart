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

  const WebhookFilterType(this.value);
  final String value;

  static WebhookFilterType fromValue(String value) {
    for (final item in WebhookFilterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookFilterType value: $value');
  }
}

