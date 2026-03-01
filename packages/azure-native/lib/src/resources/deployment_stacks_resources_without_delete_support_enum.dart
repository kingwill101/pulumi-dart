/// Some resources do not support deletion.  This flag will denote how the stack should handle those resources.
enum DeploymentStacksResourcesWithoutDeleteSupportEnum {
  detach("detach"),
  fail("fail");

  const DeploymentStacksResourcesWithoutDeleteSupportEnum(this.value);
  final String value;

  static DeploymentStacksResourcesWithoutDeleteSupportEnum fromValue(String value) {
    for (final item in DeploymentStacksResourcesWithoutDeleteSupportEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentStacksResourcesWithoutDeleteSupportEnum value: $value');
  }
}

