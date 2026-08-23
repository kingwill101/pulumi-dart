/// The Domain name label scope of the PublicIPAddress resources that will be created. The generated name label is the concatenation of the hashed domain name label with policy according to the domain name label scope and vm network profile unique ID.
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
