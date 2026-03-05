/// The permitted JSON web key operations of the key. For more information, see JsonWebKeyOperation.
enum JsonWebKeyOperation {
  valueEncrypt("encrypt"),
  valueDecrypt("decrypt"),
  valueSign("sign"),
  valueVerify("verify"),
  valueWrapKey("wrapKey"),
  valueUnwrapKey("unwrapKey"),
  valueImport("import"),
  valueRelease("release");

  const JsonWebKeyOperation(this.wireValue);
  final String wireValue;

  static JsonWebKeyOperation fromValue(String value) {
    for (final item in JsonWebKeyOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonWebKeyOperation value: $value');
  }
}

