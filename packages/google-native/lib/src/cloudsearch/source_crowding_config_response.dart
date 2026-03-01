// ignore_for_file: unused_element, unnecessary_cast

/// Set search results crowding limits. Crowding is a situation in which multiple results from the same source or host "crowd out" other results, diminishing the quality of search for users. To foster better search quality and source diversity in search results, you can set a condition to reduce repetitive results by source.
class SourceCrowdingConfigResponse {
  /// Maximum number of results allowed from a datasource in a result page as long as results from other sources are not exhausted. Value specified must not be negative. A default value is used if this value is equal to 0. To disable crowding, set the value greater than 100.
  final int numResults;

  /// Maximum number of suggestions allowed from a source. No limits will be set on results if this value is less than or equal to 0.
  final int numSuggestions;

  /// Creates a new [SourceCrowdingConfigResponse].
  /// [numResults] Maximum number of results allowed from a datasource in a result page as long as results from other sources are not exhausted. Value specified must not be negative. A default value is used if this value is equal to 0. To disable crowding, set the value greater than 100.
  /// [numSuggestions] Maximum number of suggestions allowed from a source. No limits will be set on results if this value is less than or equal to 0.
  SourceCrowdingConfigResponse({
    required this.numResults,
    required this.numSuggestions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numResults': numResults,
      'numSuggestions': numSuggestions,
    };
  }

  factory SourceCrowdingConfigResponse.fromMap(Map<String, dynamic> map) {
    return SourceCrowdingConfigResponse(
      numResults: map['numResults'] as int,
      numSuggestions: map['numSuggestions'] as int,
    );
  }
}
