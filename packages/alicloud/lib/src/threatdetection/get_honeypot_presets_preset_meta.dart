// ignore_for_file: unused_element, unnecessary_cast


class GetHoneypotPresetsPresetMeta {
  /// Burp counter.
  final String burp;
  /// Social traceability.
  final bool portraitOption;
  /// Git countered.
  final String trojanGit;

  /// Creates a new [GetHoneypotPresetsPresetMeta].
  /// [burp] Burp counter.
  /// [portraitOption] Social traceability.
  /// [trojanGit] Git countered.
  GetHoneypotPresetsPresetMeta({
    required this.burp,
    required this.portraitOption,
    required this.trojanGit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burp': burp,
      'portraitOption': portraitOption,
      'trojanGit': trojanGit,
    };
  }

  factory GetHoneypotPresetsPresetMeta.fromMap(Map<String, dynamic> map) {
    return GetHoneypotPresetsPresetMeta(
      burp: map['burp'] as String,
      portraitOption: map['portraitOption'] as bool,
      trojanGit: map['trojanGit'] as String,
    );
  }
}

