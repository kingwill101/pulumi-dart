// ignore_for_file: unused_element, unnecessary_cast


class GetSequencesSequence {
  /// The sequence's data type as defined in ``information_schema.sequences``.
  final String dataType;
  /// The sequence name.
  final String objectName;
  /// The parent schema.
  final String schemaName;

  /// Creates a new [GetSequencesSequence].
  /// [dataType] The sequence's data type as defined in ``information_schema.sequences``.
  /// [objectName] The sequence name.
  /// [schemaName] The parent schema.
  GetSequencesSequence({
    required this.dataType,
    required this.objectName,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'objectName': objectName,
      'schemaName': schemaName,
    };
  }

  factory GetSequencesSequence.fromMap(Map<String, dynamic> map) {
    return GetSequencesSequence(
      dataType: map['dataType'] as String,
      objectName: map['objectName'] as String,
      schemaName: map['schemaName'] as String,
    );
  }
}

