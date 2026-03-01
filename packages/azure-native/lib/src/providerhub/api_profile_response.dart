// ignore_for_file: unused_element, unnecessary_cast


class ApiProfileResponse {
  /// Api version.
  final String? apiVersion;
  /// Profile version.
  final String? profileVersion;

  /// Creates a new [ApiProfileResponse].
  /// [apiVersion] Api version.
  /// [profileVersion] Profile version.
  ApiProfileResponse({
    this.apiVersion,
    this.profileVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'profileVersion': ?profileVersion,
    };
  }

  factory ApiProfileResponse.fromMap(Map<String, dynamic> map) {
    return ApiProfileResponse(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      profileVersion: map['profileVersion'] == null ? null : map['profileVersion'] as String,
    );
  }
}

