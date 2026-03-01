// ignore_for_file: unused_element, unnecessary_cast


class ApiKeyRestrictionsServerKeyRestrictions {
  /// A list of the caller IP addresses that are allowed to make API calls with this key.
  final List<String> allowedIps;

  /// Creates a new [ApiKeyRestrictionsServerKeyRestrictions].
  /// [allowedIps] A list of the caller IP addresses that are allowed to make API calls with this key.
  ApiKeyRestrictionsServerKeyRestrictions({
    required this.allowedIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIps': allowedIps,
    };
  }

  factory ApiKeyRestrictionsServerKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return ApiKeyRestrictionsServerKeyRestrictions(
      allowedIps: (map['allowedIps'] as List).cast<String>(),
    );
  }
}

