// ignore_for_file: unused_element, unnecessary_cast


class ConnectionPersonalAccessToken {
  final String? pat;

  /// Creates a new [ConnectionPersonalAccessToken].
  /// [pat] Optional.
  ConnectionPersonalAccessToken({
    this.pat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pat': ?pat,
    };
  }

  factory ConnectionPersonalAccessToken.fromMap(Map<String, dynamic> map) {
    return ConnectionPersonalAccessToken(
      pat: map['pat'] == null ? null : map['pat'] as String,
    );
  }
}

