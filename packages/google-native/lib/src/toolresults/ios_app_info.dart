// ignore_for_file: unused_element, unnecessary_cast

/// iOS app information
class IosAppInfo {
  /// The name of the app. Required
  final String? name;

  /// Creates a new [IosAppInfo].
  /// [name] The name of the app. Required
  IosAppInfo({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory IosAppInfo.fromMap(Map<String, dynamic> map) {
    return IosAppInfo(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
