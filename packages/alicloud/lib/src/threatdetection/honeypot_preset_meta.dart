// ignore_for_file: unused_element, unnecessary_cast


class HoneypotPresetMeta {
  /// Burp counter.
  final String burp;
  /// Social traceability.
  final bool? portraitOption;
  /// Git countered.
  final String? trojanGit;

  /// Creates a new [HoneypotPresetMeta].
  /// [burp] Burp counter.
  /// [portraitOption] Social traceability.
  /// [trojanGit] Git countered.
  HoneypotPresetMeta({
    required this.burp,
    this.portraitOption,
    this.trojanGit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burp': burp,
      'portraitOption': ?portraitOption,
      'trojanGit': ?trojanGit,
    };
  }

  factory HoneypotPresetMeta.fromMap(Map<String, dynamic> map) {
    return HoneypotPresetMeta(
      burp: map['burp'] as String,
      portraitOption: map['portraitOption'] == null ? null : map['portraitOption'] as bool,
      trojanGit: map['trojanGit'] == null ? null : map['trojanGit'] as String,
    );
  }
}

