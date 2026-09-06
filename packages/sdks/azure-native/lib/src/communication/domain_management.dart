import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how a Domains resource is being managed.
enum DomainManagement implements pulumi.PulumiEnum<String> {
  azureManaged("AzureManaged"),
  customerManaged("CustomerManaged"),
  customerManagedInExchangeOnline("CustomerManagedInExchangeOnline");

  const DomainManagement(this.wireValue);
  @override
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
