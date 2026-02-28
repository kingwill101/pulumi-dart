// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the FHIR paths to match and how to handle the de-identification of matching fields.
class GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse {
  /// Replace the field's value with a masking character. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  final Map<String, dynamic> characterMaskField;

  /// Inspect the field's text and transform sensitive text. Configure using TextConfig. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Date, DateTime, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  final Map<String, dynamic> cleanTextField;

  /// Replace field value with a hash of that value. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  final Map<String, dynamic> cryptoHashField;

  /// Shift the date by a randomized number of days. See [date shifting](https://cloud.google.com/dlp/docs/concepts-date-shifting) for more information. Supported [types](https://www.hl7.org/fhir/datatypes.html): Date, DateTime.
  final Map<String, dynamic> dateShiftField;

  /// Keep the field unchanged.
  final Map<String, dynamic> keepField;

  /// List of paths to FHIR fields to redact. Each path is a period-separated list where each component is either a field name or FHIR [type](https://www.hl7.org/fhir/datatypes.html) name. All types begin with an upper case letter. For example, the resource field `Patient.Address.city`, which uses a [string](https://www.hl7.org/fhir/datatypes-definitions.html#Address.city) type, can be matched by `Patient.Address.String`. Partial matching is supported. For example, `Patient.Address.city` can be matched by `Address.city` (with `Patient` omitted). Partial matching and type matching can be combined, for example `Patient.Address.city` can be matched by `Address.String`. For "choice" types (those defined in the FHIR spec with the format `field[x]`), use two separate components. For example, `deceasedAge.unit` is matched by `Deceased.Age.unit`. The following types are supported: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml. The sub-type for HumanName (for example `HumanName.given`, `HumanName.family`) can be omitted.
  final List<String> paths;

  /// Remove the field.
  final Map<String, dynamic> removeField;

  /// Creates a new [GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse].
  /// [characterMaskField] Replace the field's value with a masking character. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  /// [cleanTextField] Inspect the field's text and transform sensitive text. Configure using TextConfig. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Date, DateTime, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  /// [cryptoHashField] Replace field value with a hash of that value. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  /// [dateShiftField] Shift the date by a randomized number of days. See [date shifting](https://cloud.google.com/dlp/docs/concepts-date-shifting) for more information. Supported [types](https://www.hl7.org/fhir/datatypes.html): Date, DateTime.
  /// [keepField] Keep the field unchanged.
  /// [paths] List of paths to FHIR fields to redact. Each path is a period-separated list where each component is either a field name or FHIR [type](https://www.hl7.org/fhir/datatypes.html) name. All types begin with an upper case letter. For example, the resource field `Patient.Address.city`, which uses a [string](https://www.hl7.org/fhir/datatypes-definitions.html#Address.city) type, can be matched by `Patient.Address.String`. Partial matching is supported. For example, `Patient.Address.city` can be matched by `Address.city` (with `Patient` omitted). Partial matching and type matching can be combined, for example `Patient.Address.city` can be matched by `Address.String`. For "choice" types (those defined in the FHIR spec with the format `field[x]`), use two separate components. For example, `deceasedAge.unit` is matched by `Deceased.Age.unit`. The following types are supported: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml. The sub-type for HumanName (for example `HumanName.given`, `HumanName.family`) can be omitted.
  /// [removeField] Remove the field.
  GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse({
    required this.characterMaskField,
    required this.cleanTextField,
    required this.cryptoHashField,
    required this.dateShiftField,
    required this.keepField,
    required this.paths,
    required this.removeField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['characterMaskField'] = characterMaskField;
    map['cleanTextField'] = cleanTextField;
    map['cryptoHashField'] = cryptoHashField;
    map['dateShiftField'] = dateShiftField;
    map['keepField'] = keepField;
    map['paths'] = paths;
    map['removeField'] = removeField;
    return map;
  }

  factory GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse(
      characterMaskField:
          (map['characterMaskField'] as Map).cast<String, dynamic>(),
      cleanTextField: (map['cleanTextField'] as Map).cast<String, dynamic>(),
      cryptoHashField: (map['cryptoHashField'] as Map).cast<String, dynamic>(),
      dateShiftField: (map['dateShiftField'] as Map).cast<String, dynamic>(),
      keepField: (map['keepField'] as Map).cast<String, dynamic>(),
      paths: (map['paths'] as List).cast<String>(),
      removeField: (map['removeField'] as Map).cast<String, dynamic>(),
    );
  }
}
