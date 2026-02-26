// ignore_for_file: unused_element, unnecessary_cast

class ApiKeyRestrictionsServerKeyRestrictions {
  /// A list of the caller IP addresses that are allowed to make API calls with this key.
  final List<String> allowedIps;

  ApiKeyRestrictionsServerKeyRestrictions({
    required this.allowedIps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIps'] = allowedIps;
    return map;
  }

  factory ApiKeyRestrictionsServerKeyRestrictions.fromMap(
      Map<String, dynamic> map) {
    return ApiKeyRestrictionsServerKeyRestrictions(
      allowedIps: (map['allowedIps'] as List).cast<String>(),
    );
  }
}
