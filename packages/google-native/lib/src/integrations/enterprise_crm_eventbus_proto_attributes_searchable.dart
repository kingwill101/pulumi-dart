enum EnterpriseCrmEventbusProtoAttributesSearchable {
  unspecified("UNSPECIFIED"),
  yes("YES"),
  no("NO");

  const EnterpriseCrmEventbusProtoAttributesSearchable(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoAttributesSearchable fromValue(
    String value,
  ) {
    for (final item in EnterpriseCrmEventbusProtoAttributesSearchable.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmEventbusProtoAttributesSearchable value: $value',
    );
  }
}
