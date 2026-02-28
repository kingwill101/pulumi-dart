// ignore_for_file: unused_element, unnecessary_cast

/// iOS app information
class IosAppInfoResponse {
  /// The name of the app. Required
  final String name;

  /// Creates a new [IosAppInfoResponse].
  /// [name] The name of the app. Required
  IosAppInfoResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory IosAppInfoResponse.fromMap(Map<String, dynamic> map) {
    return IosAppInfoResponse(
      name: map['name'] as String,
    );
  }
}
