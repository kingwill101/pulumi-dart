// ignore_for_file: unused_element, unnecessary_cast


class DatascanDataProfileSpecExcludeFields {
  /// Expected input is a list of fully qualified names of fields as in the schema.
  /// Only top-level field names for nested fields are supported.
  /// For instance, if 'x' is of nested field type, listing 'x' is supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are nested fields of 'x'.
  final List<String>? fieldNames;

  /// Creates a new [DatascanDataProfileSpecExcludeFields].
  /// [fieldNames] Expected input is a list of fully qualified names of fields as in the schema.
  DatascanDataProfileSpecExcludeFields({
    this.fieldNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldNames': ?fieldNames,
    };
  }

  factory DatascanDataProfileSpecExcludeFields.fromMap(Map<String, dynamic> map) {
    return DatascanDataProfileSpecExcludeFields(
      fieldNames: map['fieldNames'] == null ? null : (map['fieldNames'] as List).cast<String>(),
    );
  }
}

