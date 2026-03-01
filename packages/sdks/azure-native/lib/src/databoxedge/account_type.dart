/// Type of storage accessed on the storage account.
enum AccountType {
  valueGeneralPurposeStorage("GeneralPurposeStorage"),
  valueBlobStorage("BlobStorage");

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

