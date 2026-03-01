// ignore_for_file: unused_element, unnecessary_cast


class ApiProfile {
  /// Api version.
  final String? apiVersion;
  /// Profile version.
  final String? profileVersion;

  /// Creates a new [ApiProfile].
  /// [apiVersion] Api version.
  /// [profileVersion] Profile version.
  ApiProfile({
    this.apiVersion,
    this.profileVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'profileVersion': ?profileVersion,
    };
  }

  factory ApiProfile.fromMap(Map<String, dynamic> map) {
    return ApiProfile(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      profileVersion: map['profileVersion'] == null ? null : map['profileVersion'] as String,
    );
  }
}

