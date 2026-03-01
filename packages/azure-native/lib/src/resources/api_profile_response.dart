// ignore_for_file: unused_element, unnecessary_cast


class ApiProfileResponse {
  /// The API version.
  final String apiVersion;
  /// The profile version.
  final String profileVersion;

  /// Creates a new [ApiProfileResponse].
  /// [apiVersion] The API version.
  /// [profileVersion] The profile version.
  ApiProfileResponse({
    required this.apiVersion,
    required this.profileVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'profileVersion': profileVersion,
    };
  }

  factory ApiProfileResponse.fromMap(Map<String, dynamic> map) {
    return ApiProfileResponse(
      apiVersion: map['apiVersion'] as String,
      profileVersion: map['profileVersion'] as String,
    );
  }
}

