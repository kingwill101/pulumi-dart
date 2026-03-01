// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listServiceGloballyEnabledApms.
class ListServiceGloballyEnabledApmsResult {
  /// Collection of the globally enabled APMs
  final List<String>? value;

  /// Creates a new [ListServiceGloballyEnabledApmsResult].
  /// [value] Collection of the globally enabled APMs
  ListServiceGloballyEnabledApmsResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ListServiceGloballyEnabledApmsResult.fromMap(Map<String, dynamic> map) {
    return ListServiceGloballyEnabledApmsResult(
      value: map['value'] == null ? null : (map['value'] as List).cast<String>(),
    );
  }
}

