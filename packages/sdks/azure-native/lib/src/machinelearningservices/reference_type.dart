/// [Required] Specifies the type of asset reference.
enum ReferenceType {
  id("Id"),
  dataPath("DataPath"),
  outputPath("OutputPath");

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
