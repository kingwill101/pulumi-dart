/// The Domain name label scope.The concatenation of the hashed domain name label that generated according to the policy from domain name label scope and vm index will be the domain name labels of the PublicIPAddress resources that will be created
enum DomainNameLabelScopeTypes {
  tenantReuse("TenantReuse"),
  subscriptionReuse("SubscriptionReuse"),
  resourceGroupReuse("ResourceGroupReuse"),
  noReuse("NoReuse");

  const DomainNameLabelScopeTypes(this.wireValue);
  final String wireValue;

  static DomainNameLabelScopeTypes fromValue(String value) {
    for (final item in DomainNameLabelScopeTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainNameLabelScopeTypes value: $value');
  }
}
