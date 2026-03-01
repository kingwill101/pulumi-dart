// ignore_for_file: unused_element, unnecessary_cast


class SignVersion {
  final String? oss;
  final String? sls;

  /// Creates a new [SignVersion].
  /// [oss] Optional.
  /// [sls] Optional.
  SignVersion({
    this.oss,
    this.sls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oss': ?oss,
      'sls': ?sls,
    };
  }

  factory SignVersion.fromMap(Map<String, dynamic> map) {
    return SignVersion(
      oss: map['oss'] == null ? null : map['oss'] as String,
      sls: map['sls'] == null ? null : map['sls'] as String,
    );
  }
}

