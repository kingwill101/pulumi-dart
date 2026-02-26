// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationScope {
  /// Required. Scope Type.
  /// Possible values:
  /// REGIONAL
  /// GLOBAL Possible values: ["REGIONAL", "GLOBAL"]
  final String type;

  GetApplicationScope({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GetApplicationScope.fromMap(Map<String, dynamic> map) {
    return GetApplicationScope(
      type: map['type'] as String,
    );
  }
}
