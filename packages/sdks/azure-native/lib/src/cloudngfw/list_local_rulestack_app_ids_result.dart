// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listLocalRulestackAppIds.
class ListLocalRulestackAppIdsResult {
  /// next Link
  final String? nextLink;
  /// List of AppIds
  final List<String>? value;

  /// Creates a new [ListLocalRulestackAppIdsResult].
  /// [nextLink] next Link
  /// [value] List of AppIds
  const ListLocalRulestackAppIdsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value,
    };
  }

  factory ListLocalRulestackAppIdsResult.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackAppIdsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
