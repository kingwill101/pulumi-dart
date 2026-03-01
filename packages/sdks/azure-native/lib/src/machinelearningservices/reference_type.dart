/// [Required] Specifies the type of asset reference.
enum ReferenceType {
  valueId("Id"),
  valueDataPath("DataPath"),
  valueOutputPath("OutputPath");

  const ReferenceType(this.value);
  final String value;

  static ReferenceType fromValue(String value) {
    for (final item in ReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReferenceType value: $value');
  }
}

