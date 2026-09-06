import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of storage accessed on the storage account.
enum AccountType implements pulumi.PulumiEnum<String> {
  valueGeneralPurposeStorage("GeneralPurposeStorage"),
  valueBlobStorage("BlobStorage");

  const AccountType(this.wireValue);
  @override
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
