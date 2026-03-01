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

  const Toolset(this.value);
  final String value;

  static Toolset fromValue(String value) {
    for (final item in Toolset.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Toolset value: $value');
  }
}

