// ignore_for_file: unused_element, unnecessary_cast


class ApplicationLivenessV2HttpGet {
  final bool? isContainKeyWord;
  final String? keyWord;
  final String? path;
  final int? port;
  final String? scheme;

  /// Creates a new [ApplicationLivenessV2HttpGet].
  /// [isContainKeyWord] Optional.
  /// [keyWord] Optional.
  /// [path] Optional.
  /// [port] Optional.
  /// [scheme] Optional.
  ApplicationLivenessV2HttpGet({
    this.isContainKeyWord,
    this.keyWord,
    this.path,
    this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isContainKeyWord': ?isContainKeyWord,
      'keyWord': ?keyWord,
      'path': ?path,
      'port': ?port,
      'scheme': ?scheme,
    };
  }

  factory ApplicationLivenessV2HttpGet.fromMap(Map<String, dynamic> map) {
    return ApplicationLivenessV2HttpGet(
      isContainKeyWord: map['isContainKeyWord'] == null ? null : map['isContainKeyWord'] as bool,
      keyWord: map['keyWord'] == null ? null : map['keyWord'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}

