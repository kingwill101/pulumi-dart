// ignore_for_file: unused_element, unnecessary_cast


/// Connector mapping property structure.
class ConnectorMappingStructureResponse {
  /// The column name of the import file.
  final String columnName;
  /// Custom format specifier for input parsing.
  final String? customFormatSpecifier;
  /// Indicates if the column is encrypted.
  final bool? isEncrypted;
  /// The property name of the mapping entity.
  final String propertyName;

  /// Creates a new [ConnectorMappingStructureResponse].
  /// [columnName] The column name of the import file.
  /// [customFormatSpecifier] Custom format specifier for input parsing.
  /// [isEncrypted] Indicates if the column is encrypted.
  /// [propertyName] The property name of the mapping entity.
  ConnectorMappingStructureResponse({
    required this.columnName,
    this.customFormatSpecifier,
    this.isEncrypted,
    required this.propertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'customFormatSpecifier': ?customFormatSpecifier,
      'isEncrypted': ?isEncrypted,
      'propertyName': propertyName,
    };
  }

  factory ConnectorMappingStructureResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingStructureResponse(
      columnName: map['columnName'] as String,
      customFormatSpecifier: map['customFormatSpecifier'] == null ? null : map['customFormatSpecifier'] as String,
      isEncrypted: map['isEncrypted'] == null ? null : map['isEncrypted'] as bool,
      propertyName: map['propertyName'] as String,
    );
  }
}

