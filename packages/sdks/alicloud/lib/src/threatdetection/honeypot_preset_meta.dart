// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HoneypotPresetMeta {
  /// Burp counter.
  final pulumi.Input<String> burp;
  /// Social traceability.
  final pulumi.Input<bool>? portraitOption;
  /// Git countered.
  final pulumi.Input<String>? trojanGit;

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
      burp: (map['burp'] as String).input(),
      portraitOption: map['portraitOption'] == null ? null : (map['portraitOption'] as bool).input(),
      trojanGit: map['trojanGit'] == null ? null : (map['trojanGit'] as String).input(),
    );
  }
}

