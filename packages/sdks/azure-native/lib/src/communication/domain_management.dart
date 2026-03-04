/// Describes how a Domains resource is being managed.
enum DomainManagement {
  valueAzureManaged("AzureManaged"),
  valueCustomerManaged("CustomerManaged"),
  valueCustomerManagedInExchangeOnline("CustomerManagedInExchangeOnline");

  const DomainManagement(this.wireValue);
  final String wireValue;

  static DomainManagement fromValue(String value) {
    for (final item in DomainManagement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainManagement value: $value');
  }
}
