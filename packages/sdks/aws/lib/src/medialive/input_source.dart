// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InputSource {
  /// The key used to extract the password from EC2 Parameter store.
  final pulumi.Input<String> passwordParam;
  /// The URL where the stream is pulled from.
  final pulumi.Input<String> url;
  /// The username for the input source.
  final pulumi.Input<String> username;

  /// Creates a new [InputSource].
  /// [passwordParam] The key used to extract the password from EC2 Parameter store.
  /// [url] The URL where the stream is pulled from.
  /// [username] The username for the input source.
  const InputSource({
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
      passwordParam: pulumi.Input.fromValue(map['passwordParam'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

