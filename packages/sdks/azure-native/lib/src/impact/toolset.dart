import 'package:pulumi/pulumi.dart' as pulumi;

/// Tool used to interact with Azure. SDK, AzPortal, etc.., Other
enum Toolset implements pulumi.PulumiEnum<String> {
  terraform("Terraform"),
  puppet("Puppet"),
  chef("Chef"),
  sDK("SDK"),
  ansible("Ansible"),
  aRM("ARM"),
  portal("Portal"),
  shell("Shell"),
  other("Other");

  const Toolset(this.wireValue);
  @override
  final String wireValue;

  static Toolset fromValue(String value) {
    for (final item in Toolset.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Toolset value: $value');
  }
}
