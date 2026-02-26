// ignore_for_file: unused_element, unnecessary_cast

/// Android app information.
class AndroidAppInfoResponse {
  /// The name of the app. Optional
  final String name;

  /// The package name of the app. Required.
  final String packageName;

  /// The internal version code of the app. Optional.
  final String versionCode;

  /// The version name of the app. Optional.
  final String versionName;

  AndroidAppInfoResponse({
    required this.name,
    required this.packageName,
    required this.versionCode,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['packageName'] = packageName;
    map['versionCode'] = versionCode;
    map['versionName'] = versionName;
    return map;
  }

  factory AndroidAppInfoResponse.fromMap(Map<String, dynamic> map) {
    return AndroidAppInfoResponse(
      name: map['name'] as String,
      packageName: map['packageName'] as String,
      versionCode: map['versionCode'] as String,
      versionName: map['versionName'] as String,
    );
  }
}
