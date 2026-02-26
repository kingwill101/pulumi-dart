// ignore_for_file: unused_element, unnecessary_cast

import 'field_metadata_action2.dart';

/// Specifies FHIR paths to match, and how to handle de-identification of matching fields.
class FieldMetadata2 {
  /// Deidentify action for one field.
  final FieldMetadataAction2? action;

  /// List of paths to FHIR fields to redact. Each path is a period-separated list where each component is either a field name or FHIR type name. All types begin with an upper case letter. For example, the resource field "Patient.Address.city", which uses a string type, can be matched by "Patient.Address.String". Path also supports partial matching. For example, "Patient.Address.city" can be matched by "Address.city" (Patient omitted). Partial matching and type matching can be combined. For example, "Patient.Address.city" can be matched by "Address.String". For "choice" types (those defined in the FHIR spec with the form: field[x]), use two separate components. For example, "deceasedAge.unit" is matched by "Deceased.Age.unit". Supported types are: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml. The sub-type for HumanName(for example HumanName.given, HumanName.family) can be omitted.
  final List<String>? paths;

  FieldMetadata2({
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

  factory FieldMetadata2.fromMap(Map<String, dynamic> map) {
    return FieldMetadata2(
      action: map['action'] == null
          ? null
          : FieldMetadataAction2.fromValue(map['action'] as String),
      paths:
          map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
    );
  }
}
