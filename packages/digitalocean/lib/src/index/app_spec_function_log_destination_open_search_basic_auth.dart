// ignore_for_file: unused_element, unnecessary_cast


class AppSpecFunctionLogDestinationOpenSearchBasicAuth {
  /// Password for basic authentication.
  final String? password;
  /// user for basic authentication.
  final String? user;

  /// Creates a new [AppSpecFunctionLogDestinationOpenSearchBasicAuth].
  /// [password] Password for basic authentication.
  /// [user] user for basic authentication.
  AppSpecFunctionLogDestinationOpenSearchBasicAuth({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory AppSpecFunctionLogDestinationOpenSearchBasicAuth.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionLogDestinationOpenSearchBasicAuth(
      password: map['password'] == null ? null : map['password'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

