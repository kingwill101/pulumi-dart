// ignore_for_file: unused_element, unnecessary_cast

class GetControlControlMappingSourceSourceKeyword {
  final String keywordInputType;
  final String keywordValue;

  /// Creates a new [GetControlControlMappingSourceSourceKeyword].
  /// [keywordInputType] Required.
  /// [keywordValue] Required.
  GetControlControlMappingSourceSourceKeyword({
    required this.keywordInputType,
    required this.keywordValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keywordInputType'] = keywordInputType;
    map['keywordValue'] = keywordValue;
    return map;
  }

  factory GetControlControlMappingSourceSourceKeyword.fromMap(
      Map<String, dynamic> map) {
    return GetControlControlMappingSourceSourceKeyword(
      keywordInputType: map['keywordInputType'] as String,
      keywordValue: map['keywordValue'] as String,
    );
  }
}
