/// Azure Networking ACL Action.
enum ACLAction {
  valueAllow("Allow"),
  valueDeny("Deny");

  const ACLAction(this.value);
  final String value;

  static ACLAction fromValue(String value) {
    for (final item in ACLAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ACLAction value: $value');
  }
}

