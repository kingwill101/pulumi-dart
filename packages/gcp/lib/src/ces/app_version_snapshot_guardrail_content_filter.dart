// ignore_for_file: unused_element, unnecessary_cast


class AppVersionSnapshotGuardrailContentFilter {
  /// (Output)
  /// List of banned phrases. Applies to both user inputs and agent responses.
  final List<String>? bannedContents;
  /// (Output)
  /// List of banned phrases. Applies only to agent responses.
  final List<String>? bannedContentsInAgentResponses;
  /// (Output)
  /// List of banned phrases. Applies only to user inputs.
  final List<String>? bannedContentsInUserInputs;
  /// (Output)
  /// If true, diacritics are ignored during matching.
  final bool? disregardDiacritics;
  /// (Output)
  /// Match type for the content filter.
  /// Possible values:
  /// SIMPLE_STRING_MATCH
  /// WORD_BOUNDARY_STRING_MATCH
  /// REGEXP_MATCH
  final String? matchType;

  /// Creates a new [AppVersionSnapshotGuardrailContentFilter].
  /// [bannedContents] (Output)
  /// [bannedContentsInAgentResponses] (Output)
  /// [bannedContentsInUserInputs] (Output)
  /// [disregardDiacritics] (Output)
  /// [matchType] (Output)
  AppVersionSnapshotGuardrailContentFilter({
    this.bannedContents,
    this.bannedContentsInAgentResponses,
    this.bannedContentsInUserInputs,
    this.disregardDiacritics,
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannedContents': ?bannedContents,
      'bannedContentsInAgentResponses': ?bannedContentsInAgentResponses,
      'bannedContentsInUserInputs': ?bannedContentsInUserInputs,
      'disregardDiacritics': ?disregardDiacritics,
      'matchType': ?matchType,
    };
  }

  factory AppVersionSnapshotGuardrailContentFilter.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailContentFilter(
      bannedContents: map['bannedContents'] == null ? null : (map['bannedContents'] as List).cast<String>(),
      bannedContentsInAgentResponses: map['bannedContentsInAgentResponses'] == null ? null : (map['bannedContentsInAgentResponses'] as List).cast<String>(),
      bannedContentsInUserInputs: map['bannedContentsInUserInputs'] == null ? null : (map['bannedContentsInUserInputs'] as List).cast<String>(),
      disregardDiacritics: map['disregardDiacritics'] == null ? null : map['disregardDiacritics'] as bool,
      matchType: map['matchType'] == null ? null : map['matchType'] as String,
    );
  }
}

