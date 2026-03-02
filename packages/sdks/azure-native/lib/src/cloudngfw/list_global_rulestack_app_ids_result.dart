// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listGlobalRulestackAppIds.
class ListGlobalRulestackAppIdsResult {
  /// next Link
  final String? nextLink;
  /// List of AppIds
  final List<String> value;

  /// Creates a new [ListGlobalRulestackAppIdsResult].
  /// [nextLink] next Link
  /// [value] List of AppIds
  ListGlobalRulestackAppIdsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': value,
    };
  }

  factory ListGlobalRulestackAppIdsResult.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackAppIdsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: (map['value'] as List).cast<String>(),
    );
  }
}

