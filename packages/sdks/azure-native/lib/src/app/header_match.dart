// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Conditions required to match a header
class HeaderMatch {
  /// Exact value of the header
  final pulumi.Input<String?>? exactMatch;
  /// Name of the header
  final pulumi.Input<String?>? header;
  /// Prefix value of the header
  final pulumi.Input<String?>? prefixMatch;
  /// Regex value of the header
  final pulumi.Input<String?>? regexMatch;
  /// Suffix value of the header
  final pulumi.Input<String?>? suffixMatch;

  /// Creates a new [HeaderMatch].
  /// [exactMatch] Exact value of the header
  /// [header] Name of the header
  /// [prefixMatch] Prefix value of the header
  /// [regexMatch] Regex value of the header
  /// [suffixMatch] Suffix value of the header
  const HeaderMatch({
    this.exactMatch,
    this.header,
    this.prefixMatch,
    this.regexMatch,
    this.suffixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'header': ?header,
      'prefixMatch': ?prefixMatch,
      'regexMatch': ?regexMatch,
      'suffixMatch': ?suffixMatch,
    };
  }

  factory HeaderMatch.fromMap(Map<String, dynamic> map) {
    return HeaderMatch(
      exactMatch: (() { final guardedValue = map['exactMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixMatch: (() { final guardedValue = map['prefixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regexMatch: (() { final guardedValue = map['regexMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffixMatch: (() { final guardedValue = map['suffixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
