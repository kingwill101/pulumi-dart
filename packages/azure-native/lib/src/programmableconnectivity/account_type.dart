/// Type of the account the user has with the Operator's Network API infrastructure. AzureManaged | UserManaged.
enum AccountType {
  azureManaged("AzureManaged"),
  userManaged("UserManaged");

  const AccountType(this.value);
  final String value;

  static AccountType fromValue(String value) {
    for (final item in AccountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountType value: $value');
  }
}

