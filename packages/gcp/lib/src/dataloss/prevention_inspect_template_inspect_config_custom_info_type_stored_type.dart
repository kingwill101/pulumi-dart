// ignore_for_file: unused_element, unnecessary_cast

class PreventionInspectTemplateInspectConfigCustomInfoTypeStoredType {
  /// Resource name of the requested StoredInfoType, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or `projects/project-id/storedInfoTypes/432452342`.
  final String name;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeStoredType].
  /// [name] Resource name of the requested StoredInfoType, for example `organizations/433245324/storedInfoTypes/432452342`
  PreventionInspectTemplateInspectConfigCustomInfoTypeStoredType({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeStoredType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeStoredType(
      name: map['name'] as String,
    );
  }
}
