// ignore_for_file: unused_element, unnecessary_cast


/// Details of the Backend WebProxy Server to use in the Request to Backend.
class BackendProxyContract {
  /// Password to connect to the WebProxy Server
  final String? password;
  /// WebProxy Server AbsoluteUri property which includes the entire URI stored in the Uri instance, including all fragments and query strings.
  final String url;
  /// Username to connect to the WebProxy server
  final String? username;

  /// Creates a new [BackendProxyContract].
  /// [password] Password to connect to the WebProxy Server
  /// [url] WebProxy Server AbsoluteUri property which includes the entire URI stored in the Uri instance, including all fragments and query strings.
  /// [username] Username to connect to the WebProxy server
  BackendProxyContract({
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
      password: map['password'] == null ? null : map['password'] as String,
      url: map['url'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

