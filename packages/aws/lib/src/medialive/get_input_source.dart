// ignore_for_file: unused_element, unnecessary_cast

class GetInputSource {
  final String passwordParam;
  final String url;
  final String username;

  /// Creates a new [GetInputSource].
  /// [passwordParam] Required.
  /// [url] Required.
  /// [username] Required.
  GetInputSource({
    required this.passwordParam,
    required this.url,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['passwordParam'] = passwordParam;
    map['url'] = url;
    map['username'] = username;
    return map;
  }

  factory GetInputSource.fromMap(Map<String, dynamic> map) {
    return GetInputSource(
      passwordParam: map['passwordParam'] as String,
      url: map['url'] as String,
      username: map['username'] as String,
    );
  }
}
