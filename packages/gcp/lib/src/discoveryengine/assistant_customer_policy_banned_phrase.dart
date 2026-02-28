// ignore_for_file: unused_element, unnecessary_cast

class AssistantCustomerPolicyBannedPhrase {
  /// If true, diacritical marks (e.g., accents, umlauts) are ignored when
  /// matching banned phrases. For example, "cafe" would match "café".
  final bool? ignoreDiacritics;

  /// Match type for the banned phrase.
  /// The supported values: 'SIMPLE_STRING_MATCH', 'WORD_BOUNDARY_STRING_MATCH'.
  final String? matchType;

  /// The raw string content to be banned.
  final String phrase;

  /// Creates a new [AssistantCustomerPolicyBannedPhrase].
  /// [ignoreDiacritics] If true, diacritical marks (e.g., accents, umlauts) are ignored when
  /// [matchType] Match type for the banned phrase.
  /// [phrase] The raw string content to be banned.
  AssistantCustomerPolicyBannedPhrase({
    this.ignoreDiacritics,
    this.matchType,
    required this.phrase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ignoreDiacriticsValue = ignoreDiacritics;
    if (ignoreDiacriticsValue != null) {
      map['ignoreDiacritics'] = ignoreDiacriticsValue;
    }
    final matchTypeValue = matchType;
    if (matchTypeValue != null) {
      map['matchType'] = matchTypeValue;
    }
    map['phrase'] = phrase;
    return map;
  }

  factory AssistantCustomerPolicyBannedPhrase.fromMap(
      Map<String, dynamic> map) {
    return AssistantCustomerPolicyBannedPhrase(
      ignoreDiacritics: map['ignoreDiacritics'] == null
          ? null
          : map['ignoreDiacritics'] as bool,
      matchType: map['matchType'] == null ? null : map['matchType'] as String,
      phrase: map['phrase'] as String,
    );
  }
}
