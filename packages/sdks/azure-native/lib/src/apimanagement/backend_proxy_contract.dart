// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the Backend WebProxy Server to use in the Request to Backend.
class BackendProxyContract {
  /// Password to connect to the WebProxy Server
  final pulumi.Input<String>? password;
  /// WebProxy Server AbsoluteUri property which includes the entire URI stored in the Uri instance, including all fragments and query strings.
  final pulumi.Input<String> url;
  /// Username to connect to the WebProxy server
  final pulumi.Input<String>? username;

  /// Creates a new [BackendProxyContract].
  /// [password] Password to connect to the WebProxy Server
  /// [url] WebProxy Server AbsoluteUri property which includes the entire URI stored in the Uri instance, including all fragments and query strings.
  /// [username] Username to connect to the WebProxy server
  const BackendProxyContract({
    this.password,
    required this.url,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'url': url,
      'username': ?username,
    };
  }

  factory BackendProxyContract.fromMap(Map<String, dynamic> map) {
    return BackendProxyContract(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
