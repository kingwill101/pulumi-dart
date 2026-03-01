/// Property value
enum ServerType {
  bITBUCKET("BITBUCKET"),
  gITHUB("GITHUB"),
  gITHUBENTERPRISE("GITHUB_ENTERPRISE"),
  gITLAB("GITLAB"),
  gITLABSELFMANAGED("GITLAB_SELF_MANAGED");

  const ServerType(this.value);
  final String value;

  static ServerType fromValue(String value) {
    for (final item in ServerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerType value: $value');
  }
}

