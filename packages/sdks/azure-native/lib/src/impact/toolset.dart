/// Tool used to interact with Azure. SDK, AzPortal, etc.., Other
enum Toolset {
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
