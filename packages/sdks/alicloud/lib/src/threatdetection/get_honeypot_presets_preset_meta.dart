// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHoneypotPresetsPresetMeta {
  /// Burp counter.
  final pulumi.Input<String> burp;

  /// Social traceability.
  final pulumi.Input<bool> portraitOption;

  /// Git countered.
  final pulumi.Input<String> trojanGit;

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
      burp: pulumi.Input.fromValue(map['burp'] as String),
      portraitOption: pulumi.Input.fromValue(map['portraitOption'] as bool),
      trojanGit: pulumi.Input.fromValue(map['trojanGit'] as String),
    );
  }
}
