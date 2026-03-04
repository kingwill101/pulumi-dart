/// [Required] Specifies the type of asset reference.
enum ReferenceType {
  valueId("Id"),
  valueDataPath("DataPath"),
  valueOutputPath("OutputPath");

  const ReferenceType(this.wireValue);
  final String wireValue;

  static ReferenceType fromValue(String value) {
    for (final item in ReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReferenceType value: $value');
  }
}
