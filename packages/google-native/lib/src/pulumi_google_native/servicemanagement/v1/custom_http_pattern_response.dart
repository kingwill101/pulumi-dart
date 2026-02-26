// ignore_for_file: unused_element, unnecessary_cast

/// A custom pattern is used for defining custom HTTP verb.
class CustomHttpPatternResponse {
  /// The name of this custom HTTP verb.
  final String kind;

  /// The path matched by this custom verb.
  final String path;

  CustomHttpPatternResponse({
    required this.kind,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['path'] = path;
    return map;
  }

  factory CustomHttpPatternResponse.fromMap(Map<String, dynamic> map) {
    return CustomHttpPatternResponse(
      kind: map['kind'] as String,
      path: map['path'] as String,
    );
  }
}
