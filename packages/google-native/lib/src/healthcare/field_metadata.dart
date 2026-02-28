// ignore_for_file: unused_element, unnecessary_cast

import 'field_metadata_action.dart';

/// Specifies FHIR paths to match, and how to handle de-identification of matching fields.
class FieldMetadata {
  /// Deidentify action for one field.
  final FieldMetadataAction? action;

  /// List of paths to FHIR fields to be redacted. Each path is a period-separated list where each component is either a field name or FHIR type name, for example: Patient, HumanName. For "choice" types (those defined in the FHIR spec with the form: field[x]) we use two separate components. For example, "deceasedAge.unit" is matched by "Deceased.Age.unit". Supported types are: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml.
  final List<String>? paths;

  /// Creates a new [FieldMetadata].
  /// [action] Deidentify action for one field.
  /// [paths] List of paths to FHIR fields to be redacted. Each path is a period-separated list where each component is either a field name or FHIR type name, for example: Patient, HumanName. For "choice" types (those defined in the FHIR spec with the form: field[x]) we use two separate components. For example, "deceasedAge.unit" is matched by "Deceased.Age.unit". Supported types are: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml.
  FieldMetadata({
    this.action,
    this.paths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.value;
    }
    final pathsValue = paths;
    if (pathsValue != null) {
      map['paths'] = pathsValue;
    }
    return map;
  }

  factory FieldMetadata.fromMap(Map<String, dynamic> map) {
    return FieldMetadata(
      action: map['action'] == null
          ? null
          : FieldMetadataAction.fromValue(map['action'] as String),
      paths:
          map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
    );
  }
}
