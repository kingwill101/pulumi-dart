// ignore_for_file: unused_element, unnecessary_cast


class ApiProperties {
  /// Describes the version of the MongoDB account.
  final String? serverVersion;

  /// Creates a new [ApiProperties].
  /// [serverVersion] Describes the version of the MongoDB account.
  ApiProperties({
    this.serverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverVersion': ?serverVersion,
    };
  }

  factory ApiProperties.fromMap(Map<String, dynamic> map) {
    return ApiProperties(
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'] as String,
    );
  }
}

