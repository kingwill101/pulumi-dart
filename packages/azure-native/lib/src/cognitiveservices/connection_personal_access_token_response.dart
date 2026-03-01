// ignore_for_file: unused_element, unnecessary_cast


class ConnectionPersonalAccessTokenResponse {
  final String? pat;

  /// Creates a new [ConnectionPersonalAccessTokenResponse].
  /// [pat] Optional.
  ConnectionPersonalAccessTokenResponse({
    this.pat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pat': ?pat,
    };
  }

  factory ConnectionPersonalAccessTokenResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionPersonalAccessTokenResponse(
      pat: map['pat'] == null ? null : map['pat'] as String,
    );
  }
}

