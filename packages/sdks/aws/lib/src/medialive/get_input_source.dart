// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInputSource {
  final pulumi.Input<String> passwordParam;
  final pulumi.Input<String> url;
  final pulumi.Input<String> username;

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
    return <String, dynamic>{
      'passwordParam': passwordParam,
      'url': url,
      'username': username,
    };
  }

  factory GetInputSource.fromMap(Map<String, dynamic> map) {
    return GetInputSource(
      passwordParam: (map['passwordParam'] as String).input(),
      url: (map['url'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

