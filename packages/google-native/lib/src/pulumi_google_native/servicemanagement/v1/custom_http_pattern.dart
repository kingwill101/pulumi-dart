// ignore_for_file: unused_element, unnecessary_cast

/// A custom pattern is used for defining custom HTTP verb.
class CustomHttpPattern {
  /// The name of this custom HTTP verb.
  final String? kind;

  /// The path matched by this custom verb.
  final String? path;

  CustomHttpPattern({
    this.kind,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory CustomHttpPattern.fromMap(Map<String, dynamic> map) {
    return CustomHttpPattern(
      kind: map['kind'] == null ? null : map['kind'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
