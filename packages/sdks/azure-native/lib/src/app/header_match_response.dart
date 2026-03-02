// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Conditions required to match a header
class HeaderMatchResponse {
  /// Exact value of the header
  final pulumi.Input<String>? exactMatch;
  /// Name of the header
  final pulumi.Input<String>? header;
  /// Prefix value of the header
  final pulumi.Input<String>? prefixMatch;
  /// Regex value of the header
  final pulumi.Input<String>? regexMatch;
  /// Suffix value of the header
  final pulumi.Input<String>? suffixMatch;

  /// Creates a new [HeaderMatchResponse].
  /// [exactMatch] Exact value of the header
  /// [header] Name of the header
  /// [prefixMatch] Prefix value of the header
  /// [regexMatch] Regex value of the header
  /// [suffixMatch] Suffix value of the header
  HeaderMatchResponse({
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

  factory HeaderMatchResponse.fromMap(Map<String, dynamic> map) {
    return HeaderMatchResponse(
      exactMatch: map['exactMatch'] == null ? null : (map['exactMatch'] as String).input(),
      header: map['header'] == null ? null : (map['header'] as String).input(),
      prefixMatch: map['prefixMatch'] == null ? null : (map['prefixMatch'] as String).input(),
      regexMatch: map['regexMatch'] == null ? null : (map['regexMatch'] as String).input(),
      suffixMatch: map['suffixMatch'] == null ? null : (map['suffixMatch'] as String).input(),
    );
  }
}

