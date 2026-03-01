// ignore_for_file: unused_element, unnecessary_cast


/// Conditions required to match a header
class HeaderMatchResponse {
  /// Exact value of the header
  final String? exactMatch;
  /// Name of the header
  final String? header;
  /// Prefix value of the header
  final String? prefixMatch;
  /// Regex value of the header
  final String? regexMatch;
  /// Suffix value of the header
  final String? suffixMatch;

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
      exactMatch: map['exactMatch'] == null ? null : map['exactMatch'] as String,
      header: map['header'] == null ? null : map['header'] as String,
      prefixMatch: map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      regexMatch: map['regexMatch'] == null ? null : map['regexMatch'] as String,
      suffixMatch: map['suffixMatch'] == null ? null : map['suffixMatch'] as String,
    );
  }
}

