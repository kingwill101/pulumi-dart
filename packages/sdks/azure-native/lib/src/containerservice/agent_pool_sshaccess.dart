import 'package:pulumi/pulumi.dart' as pulumi;

/// SSH access method of an agent pool.
enum AgentPoolSSHAccess implements pulumi.PulumiEnum<String> {
  valueLocalUser("LocalUser"),
  valueDisabled("Disabled");

  const AgentPoolSSHAccess(this.wireValue);
  @override
  final String wireValue;

  static AgentPoolSSHAccess fromValue(String value) {
    for (final item in AgentPoolSSHAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPoolSSHAccess value: $value');
  }
}
