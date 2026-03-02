// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the Backend WebProxy Server to use in the Request to Backend.
class BackendProxyContractResponse {
  /// Password to connect to the WebProxy Server
  final pulumi.Input<String>? password;
  /// WebProxy Server AbsoluteUri property which includes the entire URI stored in the Uri instance, including all fragments and query strings.
  final pulumi.Input<String> url;
  /// Username to connect to the WebProxy server
  final pulumi.Input<String>? username;

  /// Creates a new [BackendProxyContractResponse].
  /// [password] Password to connect to the WebProxy Server
  /// [url] WebProxy Server AbsoluteUri property which includes the entire URI stored in the Uri instance, including all fragments and query strings.
  /// [username] Username to connect to the WebProxy server
  BackendProxyContractResponse({
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

  factory BackendProxyContractResponse.fromMap(Map<String, dynamic> map) {
    return BackendProxyContractResponse(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      url: (map['url'] as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

