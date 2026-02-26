// ignore_for_file: unused_element, unnecessary_cast

class GuardrailContentFilter {
  /// List of banned phrases. Applies to both user inputs and agent responses.
  final List<String>? bannedContents;

  /// List of banned phrases. Applies only to agent responses.
  final List<String>? bannedContentsInAgentResponses;

  /// List of banned phrases. Applies only to user inputs.
  final List<String>? bannedContentsInUserInputs;

  /// If true, diacritics are ignored during matching.
  final bool? disregardDiacritics;

  /// Match type for the content filter.
  /// Possible values:
  /// SIMPLE_STRING_MATCH
  /// WORD_BOUNDARY_STRING_MATCH
  /// REGEXP_MATCH
  final String matchType;

  GuardrailContentFilter({
    this.bannedContents,
    this.bannedContentsInAgentResponses,
    this.bannedContentsInUserInputs,
    this.disregardDiacritics,
    required this.matchType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bannedContentsValue = bannedContents;
    if (bannedContentsValue != null) {
      map['bannedContents'] = bannedContentsValue;
    }
    final bannedContentsInAgentResponsesValue = bannedContentsInAgentResponses;
    if (bannedContentsInAgentResponsesValue != null) {
      map['bannedContentsInAgentResponses'] =
          bannedContentsInAgentResponsesValue;
    }
    final bannedContentsInUserInputsValue = bannedContentsInUserInputs;
    if (bannedContentsInUserInputsValue != null) {
      map['bannedContentsInUserInputs'] = bannedContentsInUserInputsValue;
    }
    final disregardDiacriticsValue = disregardDiacritics;
    if (disregardDiacriticsValue != null) {
      map['disregardDiacritics'] = disregardDiacriticsValue;
    }
    map['matchType'] = matchType;
    return map;
  }

  factory GuardrailContentFilter.fromMap(Map<String, dynamic> map) {
    return GuardrailContentFilter(
      bannedContents: map['bannedContents'] == null
          ? null
          : (map['bannedContents'] as List).cast<String>(),
      bannedContentsInAgentResponses:
          map['bannedContentsInAgentResponses'] == null
              ? null
              : (map['bannedContentsInAgentResponses'] as List).cast<String>(),
      bannedContentsInUserInputs: map['bannedContentsInUserInputs'] == null
          ? null
          : (map['bannedContentsInUserInputs'] as List).cast<String>(),
      disregardDiacritics: map['disregardDiacritics'] == null
          ? null
          : map['disregardDiacritics'] as bool,
      matchType: map['matchType'] as String,
    );
  }
}
