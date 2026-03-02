// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listLocalRulestackAppIds.
class ListLocalRulestackAppIdsResult {
  /// next Link
  final String? nextLink;
  /// List of AppIds
  final List<String> value;

  /// Creates a new [ListLocalRulestackAppIdsResult].
  /// [nextLink] next Link
  /// [value] List of AppIds
  ListLocalRulestackAppIdsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': value,
    };
  }

  factory ListLocalRulestackAppIdsResult.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackAppIdsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: (map['value'] as List).cast<String>(),
    );
  }
}

