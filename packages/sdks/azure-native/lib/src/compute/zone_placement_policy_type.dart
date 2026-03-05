/// Specifies the policy for resource's placement in availability zone. Possible values are: **Any** (used for Virtual Machines), **Auto** (used for Virtual Machine Scale Sets) - An availability zone will be automatically picked by system as part of resource creation.
enum ZonePlacementPolicyType {
  any("Any");

  const ZonePlacementPolicyType(this.wireValue);
  final String wireValue;

  static ZonePlacementPolicyType fromValue(String value) {
    for (final item in ZonePlacementPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZonePlacementPolicyType value: $value');
  }
}

