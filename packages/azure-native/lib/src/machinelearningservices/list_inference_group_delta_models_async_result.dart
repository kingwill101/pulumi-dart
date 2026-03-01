// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listInferenceGroupDeltaModelsAsync.
class ListInferenceGroupDeltaModelsAsyncResult {
  /// The link to the next page of String objects. If null, there are no additional pages.
  final String? nextLink;
  /// An array of objects of type String.
  final List<String>? value;

  /// Creates a new [ListInferenceGroupDeltaModelsAsyncResult].
  /// [nextLink] The link to the next page of String objects. If null, there are no additional pages.
  /// [value] An array of objects of type String.
  ListInferenceGroupDeltaModelsAsyncResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value,
    };
  }

  factory ListInferenceGroupDeltaModelsAsyncResult.fromMap(Map<String, dynamic> map) {
    return ListInferenceGroupDeltaModelsAsyncResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : (map['value'] as List).cast<String>(),
    );
  }
}

