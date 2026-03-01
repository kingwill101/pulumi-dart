// ignore_for_file: unused_element, unnecessary_cast


class InputSource {
  /// The key used to extract the password from EC2 Parameter store.
  final String passwordParam;
  /// The URL where the stream is pulled from.
  final String url;
  /// The username for the input source.
  final String username;

  /// Creates a new [InputSource].
  /// [passwordParam] The key used to extract the password from EC2 Parameter store.
  /// [url] The URL where the stream is pulled from.
  /// [username] The username for the input source.
  InputSource({
    required this.passwordParam,
    required this.url,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordParam': passwordParam,
      'url': url,
      'username': username,
    };
  }

  factory InputSource.fromMap(Map<String, dynamic> map) {
    return InputSource(
      passwordParam: map['passwordParam'] as String,
      url: map['url'] as String,
      username: map['username'] as String,
    );
  }
}

