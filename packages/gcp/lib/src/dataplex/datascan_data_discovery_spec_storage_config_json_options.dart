// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataDiscoverySpecStorageConfigJsonOptions {
  /// The character encoding of the data. The default is UTF-8.
  final String? encoding;

  /// Whether to disable the inference of data types for JSON data. If true, all columns are registered as their primitive types (strings, number, or boolean).
  final bool? typeInferenceDisabled;

  /// Creates a new [DatascanDataDiscoverySpecStorageConfigJsonOptions].
  /// [encoding] The character encoding of the data. The default is UTF-8.
  /// [typeInferenceDisabled] Whether to disable the inference of data types for JSON data. If true, all columns are registered as their primitive types (strings, number, or boolean).
  DatascanDataDiscoverySpecStorageConfigJsonOptions({
    this.encoding,
    this.typeInferenceDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    final typeInferenceDisabledValue = typeInferenceDisabled;
    if (typeInferenceDisabledValue != null) {
      map['typeInferenceDisabled'] = typeInferenceDisabledValue;
    }
    return map;
  }

  factory DatascanDataDiscoverySpecStorageConfigJsonOptions.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataDiscoverySpecStorageConfigJsonOptions(
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      typeInferenceDisabled: map['typeInferenceDisabled'] == null
          ? null
          : map['typeInferenceDisabled'] as bool,
    );
  }
}
