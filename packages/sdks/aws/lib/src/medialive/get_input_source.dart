// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInputSource {
  /// Key used to extract the password from EC2 Parameter store.
  final pulumi.Input<String> passwordParam;
  /// URL where the stream is pulled from.
  final pulumi.Input<String> url;
  /// Username for the input source.
  final pulumi.Input<String> username;

  /// Creates a new [GetInputSource].
  /// [passwordParam] Key used to extract the password from EC2 Parameter store.
  /// [url] URL where the stream is pulled from.
  /// [username] Username for the input source.
  const GetInputSource({
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

  factory GetInputSource.fromMap(Map<String, dynamic> map) {
    return GetInputSource(
      passwordParam: pulumi.Input.fromValue(map['passwordParam'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
