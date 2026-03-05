/// Type of storage accessed on the storage account.
enum AccountType {
  valueGeneralPurposeStorage("GeneralPurposeStorage"),
  valueBlobStorage("BlobStorage");

  const AccountType(this.wireValue);
  final String wireValue;

  static AccountType fromValue(String value) {
    for (final item in AccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountType value: $value');
  }
}

