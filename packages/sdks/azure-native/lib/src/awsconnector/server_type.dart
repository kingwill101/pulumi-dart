import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ServerType implements pulumi.PulumiEnum<String> {
  bITBUCKET("BITBUCKET"),
  gITHUB("GITHUB"),
  gITHUBENTERPRISE("GITHUB_ENTERPRISE"),
  gITLAB("GITLAB"),
  gITLABSELFMANAGED("GITLAB_SELF_MANAGED");

  const ServerType(this.wireValue);
  @override
  final String wireValue;

  static ServerType fromValue(String value) {
    for (final item in ServerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerType value: $value');
  }
}
